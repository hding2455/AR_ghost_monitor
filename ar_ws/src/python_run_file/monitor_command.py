from ambf_client import Client
import time
import rospy
#

class Controller(object):
    def __init__(self, time_delay=5):
        '''Initialize , ros subscriber'''
        self.legal_monitor_command = ['discard', 'accept']
        self.time_delay = time_delay
        # control client for simulation
        self.simulator_init()
        #real robot init
        self.real_robot_init()

    def simulator_init(self):
        pass

    def real_robot_init(self):
        pass

    def read_control_file(self, path):
        pass

    def run_simulator(self,commands):
        pass

    def back_init_state_simulator(self):
        pass

    def run_real_robot(self, commands):
        pass

    def update_init_state(self):
        pass


    def run(self):
        while not rospy.is_shutdown():
            control_file_path = raw_input("Enter the name of the kinematics file or type 'end' to end the procedure:\n")
            if control_file_path == 'end':
                break
            commands = self.read_control_file(control_file_path)

            self.run_simulator(commands)

            monitor_commands = raw_input("Enter the monitor command, accept/discard:\n")
            while monitor_commands not in self.legal_monitor_command:
                monitor_commands = raw_input("Illgal input" + monitor_commands + "please Enter the monitor command, accept/discard:\n")
            if monitor_commands == "discard":
                self.back_init_state_simulator()
            elif monitor_commands == 'accept':
                self.run_real_robot(commands)
                self.update_init_state()

class CarController(Controller):
    def __init__(self, time_delay=5):
        '''Initialize , ros subscriber'''
        super(CarController, self).__init__()

    def simulator_init(self):
        self._client = Client()
        self._client.connect()
        self.chassis_handle = self._client.get_obj_handle('Chassis')
        # self.shock_fr_handle = self._client.get_obj_handle('ShockFR')
        # self.shock_fl_handle = self._client.get_obj_handle('ShockFL')
        self.update_init_state()


    def real_robot_init(self):
        pass

    def read_control_file(self, path):
        commands = []
        f = open(path, 'r')
        lines = f.readlines()
        for line in lines[1:]:
            data = line.split(' ')
            commands.append([float(d) for d in data[:3]])
        return commands

    def run_simulator(self,commands):
        self.chassis_handle._cmd.cartesian_cmd_type = 0
        for c in commands:
            self.chassis_handle.set_joint_effort(5, c[1])
            self.chassis_handle.set_joint_effort(7, c[2])
            time.sleep(c[0])
        # Set some torque for FL Wheel
        self.chassis_handle.set_joint_effort(5, 0)
        # Set some torque for FR Wheel
        self.chassis_handle.set_joint_effort(7, 0)


    def back_init_state_simulator(self):
        self.chassis_handle.pose_command(self.init_pos.x, self.init_pos.y, self.init_pos.z, self.init_ryp[0], self.init_ryp[1], self.init_ryp[2])
        self._pose_cmd_set = False
        # self.chassis_handle.set_pos(self.init_pos.x, self.init_pos.y, self.init_pos.z)
        # self.chassis_handle.set_rpy(self.init_ryp[0], self.init_ryp[1], self.init_ryp[2])
        # self._pose_cmd_set = False

    def run_real_robot(self, commands):
        pass

    def update_init_state(self):
        self.init_pos = self.chassis_handle.get_pos()
        self.init_ryp = self.chassis_handle.get_rpy()


def main():
	control = CarController()
	control.run()

if __name__ == '__main__':
	main()





