#!/usr/bin/env python
"""OpenCV feature detectors with ros CompressedImage Topics in python.
3 
4 This example subscribes to a ros topic containing sensor_msgs 
5 CompressedImage. It converts the CompressedImage into a numpy.ndarray, 
6 then detects and marks features in that image. It finally displays 
7 and publishes the new image - again as CompressedImage topic.
8 """
# Python libs
import sys, time

# numpy and scipy
import numpy as np
from scipy.ndimage import filters

# OpenCV
import cv2

# Ros libraries
import roslib
import rospy

# Ros Messages
from sensor_msgs.msg import CompressedImage
from ambf_msgs.msg import CameraCmd, CameraState
from PyKDL import Rotation, Frame, Vector
from geometry_msgs.msg import Pose
# We do not use cv_bridge it does not support CompressedImage in python
# from cv_bridge import CvBridge, CvBridgeError
from ambf_client import Client

VERBOSE=False

class camera_handler:
  
    def __init__(self):
        '''Initialize ros publisher, ros subscriber'''
        # topic where we publish
       # self.bridge = CvBridge()
 
         # subscribed Topic
        self.real_camera_image = None
        self.real_camera_subscriber = rospy.Subscriber("/image_raw/compressed",
            CompressedImage, self.real_camera_callback,  queue_size = 1)
        self.simulate_camera_subscriber = rospy.Subscriber("/ambf/env/cameras/default_camera/ImageData/compressed",
            CompressedImage, self.simulate_camera_callback,  queue_size = 1)
        self.camera_pub = rospy.Publisher("ambf/env/cameras/default_camera/Command", CameraCmd, queue_size=1)
        if VERBOSE:
            self.camera_sub = rospy.Subscriber("ambf/env/cameras/default_camera/State", CameraState, self.show_camera_state, queue_size=1)
        self.text = 'AR'
        if VERBOSE :
            print "subscribed to /camera/image/compressed"

    def show_camera_state(self, ros_data):
        print(ros_data)
        time.sleep(5)
 
 
    def real_camera_callback(self, ros_data):
        '''Callback function of subscribed topic. 
         Here we get images from real camera and store it'''
        if VERBOSE :
            print 'received real image of type: "%s"' % ros_data.format
 
         #### direct conversion to CV2 ####
        np_arr = np.fromstring(ros_data.data, np.uint8)
        image_np = cv2.imdecode(np_arr, cv2.IMREAD_COLOR) # OpenCV >= 3.0:         
        self.real_camera_image = image_np
        
         
    def simulate_camera_callback(self, ros_data):
        '''Callback function of subscribed topic. 
         Here we get images from simulated situation and show its combination with real image
         and we also wait a key instruction for calibration'''
        if VERBOSE :
            print 'received simulated image of type: "%s"' % ros_data.format
        np_arr = np.fromstring(ros_data.data, np.uint8)
        image_np = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        if self.real_camera_image is None:
            return
        else:
            h,w = self.real_camera_image.shape[:2]
            image_np = cv2.resize(image_np, (w,h))
            ar_image = (image_np*0.5 + self.real_camera_image) / (1.5)
            key = cv2.waitKey(1) & 0xff
            if key == ord('c'):
                cv2.destroyAllWindows()
                ret = self.camera_calibration(self.real_camera_image)
                if ret == 0:
                    self.text = 'AR camera calibrated'
                elif ret == 1:
                    self.text = 'AR calibration fail during calibration'
                elif ret == 2:
                    self.text = 'AR calibration fali due to no checkboad'
            cv2.imshow(self.text, ar_image/ar_image.max())


    def camera_calibration(self, image, path='data/checkboard_config.txt'):
        h, w, length, h_offset, w_offset, z_offset = self.read_checkboard_config(path)
        criteria = (cv2.TERM_CRITERIA_EPS+cv2.TERM_CRITERIA_MAX_ITER, length, 0.001)
        objpoints = []
        imgpoints = []
        objp = np.zeros((1, h*w, 3), np.float32)
        objp[0, :, :2] = np.mgrid[0:h, 0:w].T.reshape(-1, 2) * length
        corners_image = image.copy()
        gray = cv2.cvtColor(corners_image, cv2.COLOR_BGR2GRAY)
        ret, corners = cv2.findChessboardCorners(gray, (h,w), cv2.CALIB_CB_ADAPTIVE_THRESH+cv2.CALIB_CB_FAST_CHECK+cv2.CALIB_CB_NORMALIZE_IMAGE)
        if ret:
            objpoints.append(objp)
            corners2 = cv2.cornerSubPix(gray, corners, (11,11), (-1,-1), criteria)
            imgpoints.append(corners2)
            cv2.drawChessboardCorners(image, (h,w), corners2, ret)
            cv2.imshow("findChessboard", image)
            # key = cv2.waitKey(0) & 0xff
            # if key == ord('r'):
            #     reverse = True
            ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1],None,None)
            camera_cmd = CameraCmd()
            camera_cmd.pose.position.x = tvecs[0][2]/300 + h_offset
            camera_cmd.pose.position.y = -tvecs[0][1]/300 + w_offset
            camera_cmd.pose.position.z = tvecs[0][0]/300 + z_offset
            R = Rotation().RPY(rvecs[0][2], -rvecs[0][1], rvecs[0][0])
            camera_cmd.pose.orientation.x = R.GetQuaternion()[0]
            camera_cmd.pose.orientation.y = R.GetQuaternion()[1]
            camera_cmd.pose.orientation.z = R.GetQuaternion()[2]
            camera_cmd.pose.orientation.w = R.GetQuaternion()[3]
            camera_cmd.enable_position_controller = True
            self.camera_pub.publish(camera_cmd)
            if ret:
                return 0
            else:
                return 1
        else:
            return 2

    def read_checkboard_config(self, path):
        f = open(path, 'r')
        data = f.readlines()[0].split(' ')
        h = int(data[0])
        w = int(data[1])
        length = int(data[2])
        h_offset = float(data[3])
        w_offset = float(data[4])
        z_offset = float(data[5])
        return h,w,length,h_offset,w_offset, z_offset

 
def main(args):
    '''Initializes and cleanup ros node'''
    ic = camera_handler()
    rospy.init_node('camera_handler', anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down"
    cv2.destroyAllWindows()
 
if __name__ == '__main__':
    main(sys.argv)