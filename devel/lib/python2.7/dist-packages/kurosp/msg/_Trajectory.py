"""autogenerated by genpy from kurosp/Trajectory.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import kurosp.msg

class Trajectory(genpy.Message):
  _md5sum = "d16cd91c890f877250102e8f9ecafa3f"
  _type = "kurosp/Trajectory"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Info info
Frame[] frames

================================================================================
MSG: kurosp/Info
uint8 response_mode
uint32 response_ms
uint32 traj_id
bool run
uint32 vel
uint32 tol
uint8 frame_type

================================================================================
MSG: kurosp/Frame
geometry_msgs/Point position
Ypr orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: kurosp/Ypr
float64 yaw
float64 pitch
float64 roll

"""
  __slots__ = ['info','frames']
  _slot_types = ['kurosp/Info','kurosp/Frame[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       info,frames

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Trajectory, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.info is None:
        self.info = kurosp.msg.Info()
      if self.frames is None:
        self.frames = []
    else:
      self.info = kurosp.msg.Info()
      self.frames = []

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
      buff.write(_struct_B2IB2IB.pack(_x.info.response_mode, _x.info.response_ms, _x.info.traj_id, _x.info.run, _x.info.vel, _x.info.tol, _x.info.frame_type))
      length = len(self.frames)
      buff.write(_struct_I.pack(length))
      for val1 in self.frames:
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_struct_3d.pack(_x.yaw, _x.pitch, _x.roll))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.info is None:
        self.info = kurosp.msg.Info()
      if self.frames is None:
        self.frames = None
      end = 0
      _x = self
      start = end
      end += 19
      (_x.info.response_mode, _x.info.response_ms, _x.info.traj_id, _x.info.run, _x.info.vel, _x.info.tol, _x.info.frame_type,) = _struct_B2IB2IB.unpack(str[start:end])
      self.info.run = bool(self.info.run)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frames = []
      for i in range(0, length):
        val1 = kurosp.msg.Frame()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 24
        (_x.yaw, _x.pitch, _x.roll,) = _struct_3d.unpack(str[start:end])
        self.frames.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_B2IB2IB.pack(_x.info.response_mode, _x.info.response_ms, _x.info.traj_id, _x.info.run, _x.info.vel, _x.info.tol, _x.info.frame_type))
      length = len(self.frames)
      buff.write(_struct_I.pack(length))
      for val1 in self.frames:
        _v5 = val1.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_struct_3d.pack(_x.yaw, _x.pitch, _x.roll))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.info is None:
        self.info = kurosp.msg.Info()
      if self.frames is None:
        self.frames = None
      end = 0
      _x = self
      start = end
      end += 19
      (_x.info.response_mode, _x.info.response_ms, _x.info.traj_id, _x.info.run, _x.info.vel, _x.info.tol, _x.info.frame_type,) = _struct_B2IB2IB.unpack(str[start:end])
      self.info.run = bool(self.info.run)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.frames = []
      for i in range(0, length):
        val1 = kurosp.msg.Frame()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 24
        (_x.yaw, _x.pitch, _x.roll,) = _struct_3d.unpack(str[start:end])
        self.frames.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3d = struct.Struct("<3d")
_struct_B2IB2IB = struct.Struct("<B2IB2IB")
