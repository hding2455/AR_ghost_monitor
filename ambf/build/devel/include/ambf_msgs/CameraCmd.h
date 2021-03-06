// Generated by gencpp from file ambf_msgs/CameraCmd.msg
// DO NOT EDIT!


#ifndef AMBF_MSGS_MESSAGE_CAMERACMD_H
#define AMBF_MSGS_MESSAGE_CAMERACMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>

namespace ambf_msgs
{
template <class ContainerAllocator>
struct CameraCmd_
{
  typedef CameraCmd_<ContainerAllocator> Type;

  CameraCmd_()
    : header()
    , enable_position_controller(false)
    , pose()  {
    }
  CameraCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , enable_position_controller(false)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _enable_position_controller_type;
  _enable_position_controller_type enable_position_controller;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::ambf_msgs::CameraCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ambf_msgs::CameraCmd_<ContainerAllocator> const> ConstPtr;

}; // struct CameraCmd_

typedef ::ambf_msgs::CameraCmd_<std::allocator<void> > CameraCmd;

typedef boost::shared_ptr< ::ambf_msgs::CameraCmd > CameraCmdPtr;
typedef boost::shared_ptr< ::ambf_msgs::CameraCmd const> CameraCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ambf_msgs::CameraCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ambf_msgs::CameraCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ambf_msgs::CameraCmd_<ContainerAllocator1> & lhs, const ::ambf_msgs::CameraCmd_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.enable_position_controller == rhs.enable_position_controller &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ambf_msgs::CameraCmd_<ContainerAllocator1> & lhs, const ::ambf_msgs::CameraCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ambf_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ambf_msgs::CameraCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ambf_msgs::CameraCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ambf_msgs::CameraCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4c77af9a51e6b28efe30862e7d6b0479";
  }

  static const char* value(const ::ambf_msgs::CameraCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4c77af9a51e6b28eULL;
  static const uint64_t static_value2 = 0xfe30862e7d6b0479ULL;
};

template<class ContainerAllocator>
struct DataType< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ambf_msgs/CameraCmd";
  }

  static const char* value(const ::ambf_msgs::CameraCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"bool enable_position_controller\n"
"geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::ambf_msgs::CameraCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.enable_position_controller);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CameraCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ambf_msgs::CameraCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ambf_msgs::CameraCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "enable_position_controller: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_position_controller);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AMBF_MSGS_MESSAGE_CAMERACMD_H
