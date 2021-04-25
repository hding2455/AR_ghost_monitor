# Import the Client from ambf_client package
from ambf_client import Client
import time

# Create a instance of the client
_client = Client()

# Connect the client which in turn creates callable objects from ROS topics
# and initiates a shared pool of threads for bi-directional communication
_client.connect()

print('\n\n----')
raw_input("We can see what objects the client has found. Press Enter to continue...")
# You can print the names of objects found. We should see all the links found
print(_client.get_obj_names())

# Lets get a handle the chassis of the toy car
chassis_handle = _client.get_obj_handle('Chassis')

# Let's get a handle to the two front suspensions which have the wheels
# as their children
shock_fr_handle = _client.get_obj_handle('ShockFR')
shock_fl_handle = _client.get_obj_handle('ShockFL')
# camera = _client.get_obj_handle('cameras/default_camera')
# print(camera.get_parent_name())
# print(camera.get_pos())
# print(camera.get_rpy())


# Let's sleep for a very brief moment to give the internal callbacks
# to sync up new data from the running simulator
time.sleep(0.2)

print('\n\n----')
raw_input("Let's Get Some Pose Info. Press Enter to continue...")
# Not we can print the pos and rotation of object in the World Frame
# camera.set_pos(10.0, 1.0, 2.0)
# print('Chassis Pos:')
# print(chassis_handle.get_pos())
# print('Chassis Rot:')
# print(chassis_handle.get_rot())


print('\n\n----')
raw_input("Let's get Joints and Children Info. Press Enter to continue...")
# We can get the number of children and joints connected to each object as
chassis_num_joints = chassis_handle.get_num_joints() # Get the number of joints of this object
chassis_joint_names = chassis_handle.get_joint_names() # Get a list of children names belonging to this obj
chassis_children_names = chassis_handle.get_children_names() # Get a list of children names belonging to this obj
print('Number of Joints in Chassis:')
print(chassis_num_joints)

print(' ')
print('Joint names for Chassis:')
print(chassis_joint_names)

print(' ')
print('Name of Chassis\' children:')
print(chassis_children_names)

print('\n\n----')
raw_input("Control Wheel Angles. Press Enter to continue...")
# In this example, rather than controlling the joints from Chassis, lets control
# them from lower down the hierarchy. In this case, we shall use the FR Shock and FL
# Shock which parent the FR Wheel and FL Wheel respectively.

# Set the position of FL wheel
shock_fl_handle.set_joint_pos(0, 1.57)

# Set the Position of FR Wheel
shock_fr_handle.set_joint_pos(0, -1.57)

print('\n\n----')
raw_input("Control Wheel Torques. Press Enter to continue...")
# Now lets directly control the wheel torques.
shock_fl_handle.set_joint_effort(0, 1)
# Set some torque for FR Wheel
shock_fr_handle.set_joint_effort(0, 1)
# Lets sleep for a few seconds to see the effect
time.sleep(10)

shock_fl_handle.set_joint_effort(0, 0.0)
# Set some torque for FR Wheel
shock_fr_handle.set_joint_effort(0, 0.0)

print('\n\n----')
raw_input("Set force on Chassis for 5 secs. Press Enter to continue...")
# Let's directly control the forces and torques on the Chassis Link
# Notice that these are in the world frame. Another important thing to notice
# is that unlike position control, forces control requires a continuous update
# to meet a watchdog timing condition otherwise the forces are cleared. This
# is purely for safety reasons to prevent unchecked forces in case of malfunctioning
# python client code
for i in range(0, 500):
    chassis_handle.set_force(100, 0, 0)  # Set 100 N in the World Z axis
    time.sleep(0.01)  # Run the loop for 5 seconds

print('\n\n----')
raw_input("Set torque on Chassis for 2 secs. Press Enter to continue...")
# Similarly we can individually apply the torque
for i in range(0, 200):
    chassis_handle.set_torque(0, 0, 60)  # Set 100 Nm in the World Z axis
    time.sleep(0.01)  # Run the loop for 2 seconds

print('\n\n----')
raw_input("Set force on Chassis in Body Frame 5 secs. Press Enter to continue...")
# The above force and torques were in the World frame. In many instances we care
# about setting the wrench in body frame. This is just as convenient. Lets see how to
# do that.
#
# Make sure you have PyKDL installed
from PyKDL import Rotation, Vector

for i in range(0, 500):
    cur_rot = chassis_handle.get_rot()
    # Rotation of Chassis in World
    R_cINw = Rotation.Quaternion(cur_rot.x, cur_rot.y, cur_rot.z, cur_rot.w)
    fw = Vector(15, 0, 0) # Lets set a force along body's X axis
    fc = R_cINw * fw  # Converted force in World Frame that would act in Body Frame
    chassis_handle.set_force(fc.x(), fc.y(), fc.z())  # Set 100 N in the World Z axis
    time.sleep(0.01)  # Run the loop for 5 seconds

print('\n\n----')
raw_input("Let's clean up. Press Enter to continue...")
# Lastly to cleanup
_client.clean_up()