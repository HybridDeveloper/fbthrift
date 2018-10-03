#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython as __cython
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, uint32_t
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types import NOTSET as __NOTSET
from thrift.py3.types cimport (
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    constant_shared_ptr,
)
cimport thrift.py3.std_libcpp as std_libcpp
from thrift.py3.serializer import Protocol as __Protocol
cimport thrift.py3.serializer as serializer
from thrift.py3.serializer import deserialize, serialize
import folly.iobuf as __iobuf
from folly.optional cimport cOptional

import sys
import itertools
from collections import Sequence, Set, Mapping, Iterable
import warnings
import builtins as _builtins

cdef object __EnumEnumInstances = None  # Set[Enum]
cdef object __EnumEnumMembers = {}      # Dict[str, Enum]
cdef object __EnumEnumUniqueValues = dict()    # Dict[int, Enum]

@__cython.internal
@__cython.auto_pickle(False)
cdef class __EnumMeta(type):
    def __call__(cls, value):
        cdef int cvalue
        if isinstance(value, cls) and value in __EnumEnumInstances:
            return value
        if isinstance(value, int):
            cvalue = value
            if cvalue == 1:
                return Enum.ONE
            elif cvalue == 2:
                return Enum.TWO
            elif cvalue == 3:
                return Enum.THREE

        raise ValueError(f'{value} is not a valid Enum')

    def __getitem__(cls, name):
        return __EnumEnumMembers[name]

    def __dir__(cls):
        return ['__class__', '__doc__', '__members__', '__module__',
        'ONE',
        'TWO',
        'THREE',
        ]

    def __iter__(cls):
        return iter(__EnumEnumUniqueValues.values())

    def __reversed__(cls):
        return reversed(iter(cls))

    def __contains__(cls, item):
        if not isinstance(item, cls):
            return False
        return item in __EnumEnumInstances

    def __len__(cls):
        return len(__EnumEnumInstances)


cdef __Enum_unique_instance(int value, str name):
    inst = __EnumEnumUniqueValues.get(value)
    if inst is None:
        inst = __EnumEnumUniqueValues[value] = Enum.__new__(Enum, value, name)
    __EnumEnumMembers[name] = inst
    return inst


@__cython.final
cdef class Enum(thrift.py3.types.CompiledEnum):
    ONE = __Enum_unique_instance(1, "ONE")
    TWO = __Enum_unique_instance(2, "TWO")
    THREE = __Enum_unique_instance(3, "THREE")
    __members__ = thrift.py3.types.MappingProxyType(__EnumEnumMembers)

    def __cinit__(self, value, name):
        if __EnumEnumInstances is not None:
            raise TypeError('For Safty we have disabled __new__')
        self.value = value
        self.name = name
        self.__hash = hash(name)
        self.__str = f"Enum.{name}"
        self.__repr = f"<{self.__str}: {value}>"

    def __repr__(self):
        return self.__repr

    def __str__(self):
        return self.__str

    def __int__(self):
        return self.value

    def __eq__(self, other):
        if not isinstance(other, Enum):
            warnings.warn(f"comparison not supported between instances of { Enum } and {type(other)}", RuntimeWarning, stacklevel=2)
            return False
        return self is other

    def __hash__(self):
        return self.__hash

    def __reduce__(self):
        return Enum, (self.value,)


__SetMetaClass(<PyTypeObject*> Enum, <PyTypeObject*> __EnumMeta)
__EnumEnumInstances = set(__EnumEnumUniqueValues.values())


cdef inline cEnum Enum_to_cpp(Enum value):
    cdef int cvalue = value.value
    if cvalue == 1:
        return Enum__ONE
    elif cvalue == 2:
        return Enum__TWO
    elif cvalue == 3:
        return Enum__THREE

cdef cStruct _Struct_defaults = cStruct()

cdef class Struct(thrift.py3.types.Struct):

    def __init__(
        Struct self, *,
        first=None,
        str second=None
    ):
        if first is not None:
            if not isinstance(first, int):
                raise TypeError(f'first is not a { int !r}.')
            first = <int32_t> first

        self._cpp_obj = move(Struct._make_instance(
          NULL,
          first,
          second,
        ))

    def __call__(
        Struct self,
        first=__NOTSET,
        second=__NOTSET
    ):
        changes = any((
            first is not __NOTSET,

            second is not __NOTSET,
        ))

        if not changes:
            return self

        if None is not first is not __NOTSET:
            if not isinstance(first, int):
                raise TypeError(f'first is not a { int !r}.')
            first = <int32_t> first

        if None is not second is not __NOTSET:
            if not isinstance(second, str):
                raise TypeError(f'second is not a { str !r}.')

        inst = <Struct>Struct.__new__(Struct)
        inst._cpp_obj = move(Struct._make_instance(
          self._cpp_obj.get(),
          first,
          second,
        ))
        return inst

    @staticmethod
    cdef unique_ptr[cStruct] _make_instance(
        cStruct* base_instance,
        object first,
        object second
    ) except *:
        cdef unique_ptr[cStruct] c_inst
        if base_instance:
            c_inst = make_unique[cStruct](deref(base_instance))
        else:
            c_inst = make_unique[cStruct]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if first is None:
                deref(c_inst).first = _Struct_defaults.first
                deref(c_inst).__isset.first = False
                pass
            elif first is __NOTSET:
                first = None

            if second is None:
                deref(c_inst).second = _Struct_defaults.second
                deref(c_inst).__isset.second = False
                pass
            elif second is __NOTSET:
                second = None

        if first is not None:
            deref(c_inst).first = first
            deref(c_inst).__isset.first = True
        if second is not None:
            deref(c_inst).second = second.encode('UTF-8')
            deref(c_inst).__isset.second = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        yield 'first', self.first
        yield 'second', self.second

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cStruct] cpp_obj):
        inst = <Struct>Struct.__new__(Struct)
        inst._cpp_obj = move_shared(cpp_obj)
        return inst

    @property
    def first(self):

        return deref(self._cpp_obj).first

    @property
    def second(self):

        return (<bytes>deref(self._cpp_obj).second).decode('UTF-8')


    def __hash__(Struct self):
        if not self.__hash:
            self.__hash = hash((
            self.first,
            self.second,
            ))
        return self.__hash

    def __repr__(Struct self):
        return f'Struct(first={repr(self.first)}, second={repr(self.second)})'
    def __copy__(Struct self):
        cdef shared_ptr[cStruct] cpp_obj = make_shared[cStruct](
            deref(self._cpp_obj)
        )
        return Struct.create(move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, Struct) and
                isinstance(other, Struct)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cStruct cself = deref((<Struct>self)._cpp_obj)
        cdef cStruct cother = deref((<Struct>other)._cpp_obj)
        if cop == Py_EQ:
            return cself == cother
        elif cop == Py_NE:
            return not (cself == cother)
        elif cop == Py_LT:
            return cself < cother
        elif cop == Py_LE:
            return cself <= cother
        elif cop == Py_GT:
            return cself > cother
        elif cop == Py_GE:
            return cself >= cother
        else:
            return NotImplemented

    cdef __iobuf.IOBuf _serialize(Struct self, proto):
        cdef __iobuf.cIOBufQueue queue = __iobuf.cIOBufQueue(__iobuf.cacheChainLength())
        cdef cStruct* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                serializer.CompactSerialize[cStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                serializer.BinarySerialize[cStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                serializer.JSONSerialize[cStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                serializer.CompactJSONSerialize[cStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        return __iobuf.from_unique_ptr(queue.move())

    cdef uint32_t _deserialize(Struct self, const __iobuf.cIOBuf* buf, proto) except? 0:
        cdef uint32_t needed
        self._cpp_obj = make_shared[cStruct]()
        cdef cStruct* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                needed = serializer.CompactDeserialize[cStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                needed = serializer.BinaryDeserialize[cStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                needed = serializer.JSONDeserialize[cStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                needed = serializer.CompactJSONDeserialize[cStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        return needed

    def __reduce__(self):
        return (deserialize, (Struct, serialize(self)))


cdef class List__Enum:
    def __init__(self, items=None):
        if isinstance(items, List__Enum):
            self._cpp_obj = (<List__Enum> items)._cpp_obj
        else:
            self._cpp_obj = List__Enum._make_instance(items)

    @staticmethod
    cdef create(shared_ptr[vector[cEnum]] c_items):
        inst = <List__Enum>List__Enum.__new__(List__Enum)
        inst._cpp_obj = move_shared(c_items)
        return inst

    def __copy__(List__Enum self):
        cdef shared_ptr[vector[cEnum]] cpp_obj = make_shared[vector[cEnum]](
            deref(self._cpp_obj)
        )
        return List__Enum.create(move_shared(cpp_obj))

    @staticmethod
    cdef shared_ptr[vector[cEnum]] _make_instance(object items) except *:
        cdef shared_ptr[vector[cEnum]] c_inst = make_shared[vector[cEnum]]()
        if items is not None:
            for item in items:
                if not isinstance(item, Enum):
                    raise TypeError(f"{item!r} is not of type Enum")
                deref(c_inst).push_back(Enum_to_cpp(item))
        return c_inst

    def __add__(object self, object other):
        return type(self)(itertools.chain(self, other))

    def __getitem__(self, object index_obj):
        cdef shared_ptr[vector[cEnum]] c_inst
        cdef cEnum citem
        if isinstance(index_obj, slice):
            c_inst = make_shared[vector[cEnum]]()
            sz = deref(self._cpp_obj).size()
            for index in range(*index_obj.indices(sz)):
                deref(c_inst).push_back(deref(self._cpp_obj)[index])
            return List__Enum.create(move_shared(c_inst))
        else:
            index = <int?>index_obj
            size = len(self)
            # Convert a negative index
            if index < 0:
                index = size + index
            if index >= size or index < 0:
                raise IndexError('list index out of range')
            citem = deref(self._cpp_obj)[index]
            return translate_cpp_enum_to_python(Enum, <int> citem)

    def __len__(self):
        return deref(self._cpp_obj).size()

    def __eq__(self, other):
        return thrift.py3.types.list_compare(self, other, Py_EQ)

    def __ne__(self, other):
        return not thrift.py3.types.list_compare(self, other, Py_EQ)

    def __lt__(self, other):
        return thrift.py3.types.list_compare(self, other, Py_LT)

    def __gt__(self, other):
        return thrift.py3.types.list_compare(other, self, Py_LT)

    def __le__(self, other):
        result = thrift.py3.types.list_compare(other, self, Py_LT)
        return not result if result is not NotImplemented else NotImplemented

    def __ge__(self, other):
        result = thrift.py3.types.list_compare(self, other, Py_LT)
        return not result if result is not NotImplemented else NotImplemented

    def __hash__(self):
        if not self.__hash:
            self.__hash = hash(tuple(self))
        return self.__hash

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, Enum):
            return False
        return std_libcpp.find[vector[cEnum].iterator, cEnum](deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), Enum_to_cpp(item)) != deref(self._cpp_obj).end()

    def __iter__(self):
        if not self:
            raise StopIteration
        cdef cEnum citem
        cdef vector[cEnum].iterator loc = deref(self._cpp_obj).begin()
        while loc != deref(self._cpp_obj).end():
            citem = deref(loc)
            yield translate_cpp_enum_to_python(Enum, <int> citem)
            inc(loc)


    def __repr__(self):
        if not self:
            return 'i[]'
        return f'i[{", ".join(map(repr, self))}]'

    def __reversed__(self):
        if not self:
            raise StopIteration
        cdef cEnum citem
        cdef vector[cEnum].reverse_iterator loc = deref(self._cpp_obj).rbegin()
        while loc != deref(self._cpp_obj).rend():
            citem = deref(loc)
            yield translate_cpp_enum_to_python(Enum, <int> citem)
            inc(loc)

    def index(self, item, start not None=__NOTSET, stop not None=__NOTSET):
        err = ValueError(f'{item} is not in list')
        if not self or item is None:
            raise err
        offset_begin = offset_end = 0
        if stop is not __NOTSET or start is not __NOTSET:
            # Like self[start:stop].index(item)
            size = len(self)
            stop = stop if stop is not __NOTSET else size
            start = start if start is not __NOTSET else 0
            # Convert stop to a negative position.
            if stop > 0:
                stop = min(stop - size, 0)
            if stop <= -size:
                raise err  # List would be empty
            offset_end = -stop
            # Convert start to always be positive
            if start < 0:
                start = max(size + start, 0)
            if start >= size:
                raise err  # past end of list
            offset_begin = start

        if not isinstance(item, Enum):
            raise err
        cdef vector[cEnum].iterator end = std_libcpp.prev(deref(self._cpp_obj).end(), <int64_t>offset_end)
        cdef vector[cEnum].iterator loc = std_libcpp.find[vector[cEnum].iterator, cEnum](
            std_libcpp.next(deref(self._cpp_obj).begin(), <int64_t>offset_begin),
            end,
            Enum_to_cpp(item)        )
        if loc != end:
            return <int64_t> std_libcpp.distance(deref(self._cpp_obj).begin(), loc)
        raise err

    def count(self, item):
        if not self or item is None:
            return 0
        if not isinstance(item, Enum):
            return 0
        return <int64_t> std_libcpp.count[vector[cEnum].iterator, cEnum](
            deref(self._cpp_obj).begin(), deref(self._cpp_obj).end(), Enum_to_cpp(item))


Sequence.register(List__Enum)

c0 = Struct.create(constant_shared_ptr(cc0()))
e0s = List__Enum.create(constant_shared_ptr(ce0s()))
