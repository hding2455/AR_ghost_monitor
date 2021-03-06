// Generated by gencpp from file dvrk_ambf_extensions/ComputeIKRequest.msg
// DO NOT EDIT!


#ifndef DVRK_AMBF_EXTENSIONS_MESSAGE_COMPUTEIKREQUEST_H
#define DVRK_AMBF_EXTENSIONS_MESSAGE_COMPUTEIKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dvrk_ambf_extensions/HomogenousTransform.h>

namespace dvrk_ambf_extensions
{
template <class ContainerAllocator>
struct ComputeIKRequest_
{
  typedef ComputeIKRequest_<ContainerAllocator> Type;

  ComputeIKRequest_()
    : T_7_0()  {
    }
  ComputeIKRequest_(const ContainerAllocator& _alloc)
    : T_7_0(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dvrk_ambf_extensions::HomogenousTransform_<ContainerAllocator>  _T_7_0_type;
  _T_7_0_type T_7_0;





  typedef boost::shared_ptr< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ComputeIKRequest_

typedef ::dvrk_ambf_extensions::ComputeIKRequest_<std::allocator<void> > ComputeIKRequest;

typedef boost::shared_ptr< ::dvrk_ambf_extensions::ComputeIKRequest > ComputeIKRequestPtr;
typedef boost::shared_ptr< ::dvrk_ambf_extensions::ComputeIKRequest const> ComputeIKRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator1> & lhs, const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator2> & rhs)
{
  return lhs.T_7_0 == rhs.T_7_0;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator1> & lhs, const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dvrk_ambf_extensions

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c605d7f6f5a670a05b329beed8dc779";
  }

  static const char* value(const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c605d7f6f5a670aULL;
  static const uint64_t static_value2 = 0x05b329beed8dc779ULL;
};

template<class ContainerAllocator>
struct DataType< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dvrk_ambf_extensions/ComputeIKRequest";
  }

  static const char* value(const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "HomogenousTransform T_7_0\n"
"\n"
"================================================================================\n"
"MSG: dvrk_ambf_extensions/HomogenousTransform\n"
"float64[] data\n"
;
  }

  static const char* value(const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.T_7_0);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ComputeIKRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dvrk_ambf_extensions::ComputeIKRequest_<ContainerAllocator>& v)
  {
    s << indent << "T_7_0: ";
    s << std::endl;
    Printer< ::dvrk_ambf_extensions::HomogenousTransform_<ContainerAllocator> >::stream(s, indent + "  ", v.T_7_0);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DVRK_AMBF_EXTENSIONS_MESSAGE_COMPUTEIKREQUEST_H
