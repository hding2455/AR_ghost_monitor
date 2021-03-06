# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ambf_msgs/SensorState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class SensorState(genpy.Message):
  _md5sum = "82fb33535a7311b9256cac9ac5115e67"
  _type = "ambf_msgs/SensorState"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
uint32 sim_step
std_msgs/String type
std_msgs/String parent_name
std_msgs/String name
float32 wall_time
float32 sim_time
geometry_msgs/Pose pose
uint32 count
bool[] triggered
float32[] range
float32[] measurement
std_msgs/String[] sensed_objects
uint8[] sensed_objects_map

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['header','sim_step','type','parent_name','name','wall_time','sim_time','pose','count','triggered','range','measurement','sensed_objects','sensed_objects_map']
  _slot_types = ['std_msgs/Header','uint32','std_msgs/String','std_msgs/String','std_msgs/String','float32','float32','geometry_msgs/Pose','uint32','bool[]','float32[]','float32[]','std_msgs/String[]','uint8[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,sim_step,type,parent_name,name,wall_time,sim_time,pose,count,triggered,range,measurement,sensed_objects,sensed_objects_map

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SensorState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.sim_step is None:
        self.sim_step = 0
      if self.type is None:
        self.type = std_msgs.msg.String()
      if self.parent_name is None:
        self.parent_name = std_msgs.msg.String()
      if self.name is None:
        self.name = std_msgs.msg.String()
      if self.wall_time is None:
        self.wall_time = 0.
      if self.sim_time is None:
        self.sim_time = 0.
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.count is None:
        self.count = 0
      if self.triggered is None:
        self.triggered = []
      if self.range is None:
        self.range = []
      if self.measurement is None:
        self.measurement = []
      if self.sensed_objects is None:
        self.sensed_objects = []
      if self.sensed_objects_map is None:
        self.sensed_objects_map = b''
    else:
      self.header = std_msgs.msg.Header()
      self.sim_step = 0
      self.type = std_msgs.msg.String()
      self.parent_name = std_msgs.msg.String()
      self.name = std_msgs.msg.String()
      self.wall_time = 0.
      self.sim_time = 0.
      self.pose = geometry_msgs.msg.Pose()
      self.count = 0
      self.triggered = []
      self.range = []
      self.measurement = []
      self.sensed_objects = []
      self.sensed_objects_map = b''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sim_step
      buff.write(_get_struct_I().pack(_x))
      _x = self.type.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.parent_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f7dI().pack(_x.wall_time, _x.sim_time, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.count))
      length = len(self.triggered)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.triggered))
      length = len(self.range)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.range))
      length = len(self.measurement)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.measurement))
      length = len(self.sensed_objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.sensed_objects:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sensed_objects_map
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.type is None:
        self.type = std_msgs.msg.String()
      if self.parent_name is None:
        self.parent_name = std_msgs.msg.String()
      if self.name is None:
        self.name = std_msgs.msg.String()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.sensed_objects is None:
        self.sensed_objects = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.sim_step,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.parent_name.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.parent_name.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name.data = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.wall_time, _x.sim_time, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.count,) = _get_struct_2f7dI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.triggered = s.unpack(str[start:end])
      self.triggered = list(map(bool, self.triggered))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.range = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.measurement = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sensed_objects = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.sensed_objects.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.sensed_objects_map = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sim_step
      buff.write(_get_struct_I().pack(_x))
      _x = self.type.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.parent_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f7dI().pack(_x.wall_time, _x.sim_time, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.count))
      length = len(self.triggered)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.triggered.tostring())
      length = len(self.range)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.range.tostring())
      length = len(self.measurement)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.measurement.tostring())
      length = len(self.sensed_objects)
      buff.write(_struct_I.pack(length))
      for val1 in self.sensed_objects:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sensed_objects_map
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.type is None:
        self.type = std_msgs.msg.String()
      if self.parent_name is None:
        self.parent_name = std_msgs.msg.String()
      if self.name is None:
        self.name = std_msgs.msg.String()
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose()
      if self.sensed_objects is None:
        self.sensed_objects = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.sim_step,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.type.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.type.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.parent_name.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.parent_name.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name.data = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.wall_time, _x.sim_time, _x.pose.position.x, _x.pose.position.y, _x.pose.position.z, _x.pose.orientation.x, _x.pose.orientation.y, _x.pose.orientation.z, _x.pose.orientation.w, _x.count,) = _get_struct_2f7dI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.triggered = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.triggered = list(map(bool, self.triggered))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.range = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.measurement = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.sensed_objects = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.sensed_objects.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.sensed_objects_map = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f7dI = None
def _get_struct_2f7dI():
    global _struct_2f7dI
    if _struct_2f7dI is None:
        _struct_2f7dI = struct.Struct("<2f7dI")
    return _struct_2f7dI
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
