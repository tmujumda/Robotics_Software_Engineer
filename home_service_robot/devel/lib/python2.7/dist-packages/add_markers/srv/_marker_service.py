# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from add_markers/marker_serviceRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class marker_serviceRequest(genpy.Message):
  _md5sum = "0a5c26925aaf6433a71a5dab8f87a83b"
  _type = "add_markers/marker_serviceRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 x
float64 y
bool show_marker

"""
  __slots__ = ['x','y','show_marker']
  _slot_types = ['float64','float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,show_marker

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(marker_serviceRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.show_marker is None:
        self.show_marker = False
    else:
      self.x = 0.
      self.y = 0.
      self.show_marker = False

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
      buff.write(_get_struct_2dB().pack(_x.x, _x.y, _x.show_marker))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 17
      (_x.x, _x.y, _x.show_marker,) = _get_struct_2dB().unpack(str[start:end])
      self.show_marker = bool(self.show_marker)
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
      buff.write(_get_struct_2dB().pack(_x.x, _x.y, _x.show_marker))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 17
      (_x.x, _x.y, _x.show_marker,) = _get_struct_2dB().unpack(str[start:end])
      self.show_marker = bool(self.show_marker)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2dB = None
def _get_struct_2dB():
    global _struct_2dB
    if _struct_2dB is None:
        _struct_2dB = struct.Struct("<2dB")
    return _struct_2dB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from add_markers/marker_serviceResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class marker_serviceResponse(genpy.Message):
  _md5sum = "ca8098ed83e8add35e0051a9937647c5"
  _type = "add_markers/marker_serviceResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
bool marker_updated

"""
  __slots__ = ['marker_updated']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       marker_updated

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(marker_serviceResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.marker_updated is None:
        self.marker_updated = False
    else:
      self.marker_updated = False

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
      buff.write(_get_struct_B().pack(self.marker_updated))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.marker_updated,) = _get_struct_B().unpack(str[start:end])
      self.marker_updated = bool(self.marker_updated)
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
      buff.write(_get_struct_B().pack(self.marker_updated))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.marker_updated,) = _get_struct_B().unpack(str[start:end])
      self.marker_updated = bool(self.marker_updated)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class marker_service(object):
  _type          = 'add_markers/marker_service'
  _md5sum = 'e5cce09bb285d3db26a9c9e57cf16f60'
  _request_class  = marker_serviceRequest
  _response_class = marker_serviceResponse
