#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport thrift.py3.exceptions
cimport thrift.py3.types
from folly.optional cimport cOptional

cdef extern from *:
  ctypedef int64_t Foo "Foo"
  ctypedef double Bar "Bar"
  ctypedef int32_t Baz "Baz"

cdef extern from "src/gen-cpp2/module_types.h" namespace "cpp2":
    cdef cppclass cMyEnumA "cpp2::MyEnumA":
        bint operator==(cMyEnumA&)
    cMyEnumA MyEnumA__fieldA "cpp2::MyEnumA::fieldA"
    cMyEnumA MyEnumA__fieldB "cpp2::MyEnumA::fieldB"
    cMyEnumA MyEnumA__fieldC "cpp2::MyEnumA::fieldC"

cdef cMyEnumA MyEnumA_to_cpp(value)

cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "cpp2":
    # Forward Declaration
    cdef cppclass cSmallStruct "cpp2::SmallStruct"
    # Forward Declaration
    cdef cppclass ccontainerStruct "cpp2::containerStruct"

cdef extern from "src/gen-cpp2/module_types.h" namespace "cpp2":
    cdef cppclass cSmallStruct__isset "cpp2::SmallStruct::__isset":
        bint small_A
        bint small_B

    cdef cppclass cSmallStruct "cpp2::SmallStruct":
        cSmallStruct() except +
        cSmallStruct(const cSmallStruct&) except +
        bint operator==(cSmallStruct&)
        cbool small_A
        int32_t small_B
        cSmallStruct__isset __isset

    cdef cppclass ccontainerStruct__isset "cpp2::containerStruct::__isset":
        bint fieldA
        bint fieldB
        bint fieldC
        bint fieldD
        bint fieldE
        bint fieldF
        bint fieldG
        bint fieldH
        bint fieldI
        bint fieldJ
        bint fieldK
        bint fieldL
        bint fieldM
        bint fieldN
        bint fieldO
        bint fieldP
        bint fieldQ
        bint fieldR
        bint fieldS
        bint fieldT
        bint fieldU
        bint fieldX

    cdef cppclass ccontainerStruct "cpp2::containerStruct":
        ccontainerStruct() except +
        ccontainerStruct(const ccontainerStruct&) except +
        bint operator==(ccontainerStruct&)
        cbool fieldA
        cmap[string,cbool] fieldB
        cset[int32_t] fieldC
        string fieldD
        string fieldE
        vector[vector[vector[int32_t]]] fieldF
        cmap[string,cmap[string,cmap[string,int32_t]]] fieldG
        vector[cset[int32_t]] fieldH
        cbool fieldI
        cmap[string,vector[int32_t]] fieldJ
        vector[vector[vector[vector[int32_t]]]] fieldK
        cset[cset[cset[cbool]]] fieldL
        cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]] fieldM
        vector[Foo] fieldN
        vector[Bar] fieldO
        vector[Baz] fieldP
        cMyEnumA fieldQ
        unique_ptr[cmap[string,cbool]] fieldR
        unique_ptr[cSmallStruct] fieldS
        shared_ptr[cSmallStruct] fieldT
        shared_ptr[const cSmallStruct] fieldU
        unique_ptr[cSmallStruct] fieldX
        ccontainerStruct__isset __isset

    cdef shared_ptr[cmap[string,cbool]] aliasing_constructor_fieldR "std::shared_ptr<std::map<std::string,bool>>"(shared_ptr[ccontainerStruct]&, cmap[string,cbool]*)
    cdef shared_ptr[cSmallStruct] aliasing_constructor_fieldS "std::shared_ptr<cpp2::SmallStruct>"(shared_ptr[ccontainerStruct]&, cSmallStruct*)
    cdef shared_ptr[cSmallStruct] aliasing_constructor_fieldT "std::shared_ptr<cpp2::SmallStruct>"(shared_ptr[ccontainerStruct]&, cSmallStruct*)
    cdef shared_ptr[cSmallStruct] aliasing_constructor_fieldU "std::shared_ptr<cpp2::SmallStruct>"(shared_ptr[ccontainerStruct]&, cSmallStruct*)
    cdef shared_ptr[cSmallStruct] aliasing_constructor_fieldX "std::shared_ptr<cpp2::SmallStruct>"(shared_ptr[ccontainerStruct]&, cSmallStruct*)

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cSmallStruct] move(unique_ptr[cSmallStruct])
    cdef shared_ptr[cSmallStruct] move_shared "std::move"(shared_ptr[cSmallStruct])
    cdef unique_ptr[cSmallStruct] move_unique "std::move"(unique_ptr[cSmallStruct])
    cdef shared_ptr[ccontainerStruct] move(unique_ptr[ccontainerStruct])
    cdef shared_ptr[ccontainerStruct] move_shared "std::move"(shared_ptr[ccontainerStruct])
    cdef unique_ptr[ccontainerStruct] move_unique "std::move"(unique_ptr[ccontainerStruct])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cSmallStruct] const_pointer_cast "std::const_pointer_cast<const cpp2::SmallStruct>"(shared_ptr[cSmallStruct])
    cdef shared_ptr[const ccontainerStruct] const_pointer_cast "std::const_pointer_cast<const cpp2::containerStruct>"(shared_ptr[ccontainerStruct])

# Forward Definition of the cython struct
cdef class SmallStruct(thrift.py3.types.Struct)

cdef class SmallStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cSmallStruct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cSmallStruct] _make_instance(
        cSmallStruct* base_instance,
        object small_A,
        object small_B
    ) except *

    @staticmethod
    cdef create(shared_ptr[cSmallStruct])

# Forward Definition of the cython struct
cdef class containerStruct(thrift.py3.types.Struct)

cdef class containerStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[ccontainerStruct] _cpp_obj
    cdef Map__string_bool __fieldB
    cdef Set__i32 __fieldC
    cdef List__List__List__i32 __fieldF
    cdef Map__string_Map__string_Map__string_i32 __fieldG
    cdef List__Set__i32 __fieldH
    cdef Map__string_List__i32 __fieldJ
    cdef List__List__List__List__i32 __fieldK
    cdef Set__Set__Set__bool __fieldL
    cdef Map__Set__List__i32_Map__List__Set__string_string __fieldM
    cdef List__i64 __fieldN
    cdef List__double __fieldO
    cdef List__i32 __fieldP
    cdef Map__string_bool __fieldR
    cdef SmallStruct __fieldS
    cdef SmallStruct __fieldT
    cdef SmallStruct __fieldU
    cdef SmallStruct __fieldX

    @staticmethod
    cdef unique_ptr[ccontainerStruct] _make_instance(
        ccontainerStruct* base_instance,
        object fieldA,
        object fieldB,
        object fieldC,
        object fieldD,
        object fieldE,
        object fieldF,
        object fieldG,
        object fieldH,
        object fieldI,
        object fieldJ,
        object fieldK,
        object fieldL,
        object fieldM,
        object fieldN,
        object fieldO,
        object fieldP,
        object fieldQ,
        object fieldR,
        object fieldS,
        object fieldT,
        object fieldU,
        object fieldX
    ) except *

    @staticmethod
    cdef create(shared_ptr[ccontainerStruct])


cdef class Map__string_bool:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,cbool]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,cbool]])
    @staticmethod
    cdef unique_ptr[cmap[string,cbool]] _make_instance(object items) except *

cdef class Set__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[int32_t]])
    @staticmethod
    cdef unique_ptr[cset[int32_t]] _make_instance(object items) except *

cdef class List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int32_t]])
    @staticmethod
    cdef unique_ptr[vector[int32_t]] _make_instance(object items) except *

cdef class List__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[int32_t]]])
    @staticmethod
    cdef unique_ptr[vector[vector[int32_t]]] _make_instance(object items) except *

cdef class List__List__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[vector[int32_t]]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[vector[int32_t]]]])
    @staticmethod
    cdef unique_ptr[vector[vector[vector[int32_t]]]] _make_instance(object items) except *

cdef class Map__string_i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,int32_t]])
    @staticmethod
    cdef unique_ptr[cmap[string,int32_t]] _make_instance(object items) except *

cdef class Map__string_Map__string_i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,cmap[string,int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,cmap[string,int32_t]]])
    @staticmethod
    cdef unique_ptr[cmap[string,cmap[string,int32_t]]] _make_instance(object items) except *

cdef class Map__string_Map__string_Map__string_i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]])
    @staticmethod
    cdef unique_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]] _make_instance(object items) except *

cdef class List__Set__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cset[int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cset[int32_t]]])
    @staticmethod
    cdef unique_ptr[vector[cset[int32_t]]] _make_instance(object items) except *

cdef class Map__string_List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,vector[int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,vector[int32_t]]])
    @staticmethod
    cdef unique_ptr[cmap[string,vector[int32_t]]] _make_instance(object items) except *

cdef class List__List__List__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[vector[vector[int32_t]]]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[vector[vector[int32_t]]]]])
    @staticmethod
    cdef unique_ptr[vector[vector[vector[vector[int32_t]]]]] _make_instance(object items) except *

cdef class Set__bool:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[cbool]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[cbool]])
    @staticmethod
    cdef unique_ptr[cset[cbool]] _make_instance(object items) except *

cdef class Set__Set__bool:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[cset[cbool]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[cset[cbool]]])
    @staticmethod
    cdef unique_ptr[cset[cset[cbool]]] _make_instance(object items) except *

cdef class Set__Set__Set__bool:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[cset[cset[cbool]]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[cset[cset[cbool]]]])
    @staticmethod
    cdef unique_ptr[cset[cset[cset[cbool]]]] _make_instance(object items) except *

cdef class Set__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[vector[int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[vector[int32_t]]])
    @staticmethod
    cdef unique_ptr[cset[vector[int32_t]]] _make_instance(object items) except *

cdef class Set__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[string]])
    @staticmethod
    cdef unique_ptr[cset[string]] _make_instance(object items) except *

cdef class List__Set__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cset[string]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cset[string]]])
    @staticmethod
    cdef unique_ptr[vector[cset[string]]] _make_instance(object items) except *

cdef class Map__List__Set__string_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[vector[cset[string]],string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[vector[cset[string]],string]])
    @staticmethod
    cdef unique_ptr[cmap[vector[cset[string]],string]] _make_instance(object items) except *

cdef class Map__Set__List__i32_Map__List__Set__string_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]])
    @staticmethod
    cdef unique_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]] _make_instance(object items) except *

cdef class List__i64:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[Foo]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[Foo]])
    @staticmethod
    cdef unique_ptr[vector[Foo]] _make_instance(object items) except *

cdef class List__double:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[Bar]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[Bar]])
    @staticmethod
    cdef unique_ptr[vector[Bar]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cmap[string,cbool]] move(unique_ptr[cmap[string,cbool]])
    cdef unique_ptr[cmap[string,cbool]] move_unique "std::move"(unique_ptr[cmap[string,cbool]])
    cdef shared_ptr[cset[int32_t]] move(unique_ptr[cset[int32_t]])
    cdef unique_ptr[cset[int32_t]] move_unique "std::move"(unique_ptr[cset[int32_t]])
    cdef shared_ptr[vector[int32_t]] move(unique_ptr[vector[int32_t]])
    cdef unique_ptr[vector[int32_t]] move_unique "std::move"(unique_ptr[vector[int32_t]])
    cdef shared_ptr[vector[vector[int32_t]]] move(unique_ptr[vector[vector[int32_t]]])
    cdef unique_ptr[vector[vector[int32_t]]] move_unique "std::move"(unique_ptr[vector[vector[int32_t]]])
    cdef shared_ptr[vector[vector[vector[int32_t]]]] move(unique_ptr[vector[vector[vector[int32_t]]]])
    cdef unique_ptr[vector[vector[vector[int32_t]]]] move_unique "std::move"(unique_ptr[vector[vector[vector[int32_t]]]])
    cdef shared_ptr[cmap[string,int32_t]] move(unique_ptr[cmap[string,int32_t]])
    cdef unique_ptr[cmap[string,int32_t]] move_unique "std::move"(unique_ptr[cmap[string,int32_t]])
    cdef shared_ptr[cmap[string,cmap[string,int32_t]]] move(unique_ptr[cmap[string,cmap[string,int32_t]]])
    cdef unique_ptr[cmap[string,cmap[string,int32_t]]] move_unique "std::move"(unique_ptr[cmap[string,cmap[string,int32_t]]])
    cdef shared_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]] move(unique_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]])
    cdef unique_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]] move_unique "std::move"(unique_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]])
    cdef shared_ptr[vector[cset[int32_t]]] move(unique_ptr[vector[cset[int32_t]]])
    cdef unique_ptr[vector[cset[int32_t]]] move_unique "std::move"(unique_ptr[vector[cset[int32_t]]])
    cdef shared_ptr[cmap[string,vector[int32_t]]] move(unique_ptr[cmap[string,vector[int32_t]]])
    cdef unique_ptr[cmap[string,vector[int32_t]]] move_unique "std::move"(unique_ptr[cmap[string,vector[int32_t]]])
    cdef shared_ptr[vector[vector[vector[vector[int32_t]]]]] move(unique_ptr[vector[vector[vector[vector[int32_t]]]]])
    cdef unique_ptr[vector[vector[vector[vector[int32_t]]]]] move_unique "std::move"(unique_ptr[vector[vector[vector[vector[int32_t]]]]])
    cdef shared_ptr[cset[cbool]] move(unique_ptr[cset[cbool]])
    cdef unique_ptr[cset[cbool]] move_unique "std::move"(unique_ptr[cset[cbool]])
    cdef shared_ptr[cset[cset[cbool]]] move(unique_ptr[cset[cset[cbool]]])
    cdef unique_ptr[cset[cset[cbool]]] move_unique "std::move"(unique_ptr[cset[cset[cbool]]])
    cdef shared_ptr[cset[cset[cset[cbool]]]] move(unique_ptr[cset[cset[cset[cbool]]]])
    cdef unique_ptr[cset[cset[cset[cbool]]]] move_unique "std::move"(unique_ptr[cset[cset[cset[cbool]]]])
    cdef shared_ptr[cset[vector[int32_t]]] move(unique_ptr[cset[vector[int32_t]]])
    cdef unique_ptr[cset[vector[int32_t]]] move_unique "std::move"(unique_ptr[cset[vector[int32_t]]])
    cdef shared_ptr[cset[string]] move(unique_ptr[cset[string]])
    cdef unique_ptr[cset[string]] move_unique "std::move"(unique_ptr[cset[string]])
    cdef shared_ptr[vector[cset[string]]] move(unique_ptr[vector[cset[string]]])
    cdef unique_ptr[vector[cset[string]]] move_unique "std::move"(unique_ptr[vector[cset[string]]])
    cdef shared_ptr[cmap[vector[cset[string]],string]] move(unique_ptr[cmap[vector[cset[string]],string]])
    cdef unique_ptr[cmap[vector[cset[string]],string]] move_unique "std::move"(unique_ptr[cmap[vector[cset[string]],string]])
    cdef shared_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]] move(unique_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]])
    cdef unique_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]] move_unique "std::move"(unique_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]])
    cdef shared_ptr[vector[Foo]] move(unique_ptr[vector[Foo]])
    cdef unique_ptr[vector[Foo]] move_unique "std::move"(unique_ptr[vector[Foo]])
    cdef shared_ptr[vector[Bar]] move(unique_ptr[vector[Bar]])
    cdef unique_ptr[vector[Bar]] move_unique "std::move"(unique_ptr[vector[Bar]])
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cmap[string,cbool]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,bool>>"(shared_ptr[cmap[string,cbool]])

    cdef shared_ptr[const cset[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::set<int32_t>>"(shared_ptr[cset[int32_t]])

    cdef shared_ptr[const vector[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int32_t>>"(shared_ptr[vector[int32_t]])

    cdef shared_ptr[const vector[vector[int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<int32_t>>>"(shared_ptr[vector[vector[int32_t]]])

    cdef shared_ptr[const vector[vector[vector[int32_t]]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<std::vector<int32_t>>>>"(shared_ptr[vector[vector[vector[int32_t]]]])

    cdef shared_ptr[const cmap[string,int32_t]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,int32_t>>"(shared_ptr[cmap[string,int32_t]])

    cdef shared_ptr[const cmap[string,cmap[string,int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,std::map<std::string,int32_t>>>"(shared_ptr[cmap[string,cmap[string,int32_t]]])

    cdef shared_ptr[const cmap[string,cmap[string,cmap[string,int32_t]]]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,std::map<std::string,std::map<std::string,int32_t>>>>"(shared_ptr[cmap[string,cmap[string,cmap[string,int32_t]]]])

    cdef shared_ptr[const vector[cset[int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::set<int32_t>>>"(shared_ptr[vector[cset[int32_t]]])

    cdef shared_ptr[const cmap[string,vector[int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,std::vector<int32_t>>>"(shared_ptr[cmap[string,vector[int32_t]]])

    cdef shared_ptr[const vector[vector[vector[vector[int32_t]]]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<std::vector<std::vector<int32_t>>>>>"(shared_ptr[vector[vector[vector[vector[int32_t]]]]])

    cdef shared_ptr[const cset[cbool]] const_pointer_cast "std::const_pointer_cast<const std::set<bool>>"(shared_ptr[cset[cbool]])

    cdef shared_ptr[const cset[cset[cbool]]] const_pointer_cast "std::const_pointer_cast<const std::set<std::set<bool>>>"(shared_ptr[cset[cset[cbool]]])

    cdef shared_ptr[const cset[cset[cset[cbool]]]] const_pointer_cast "std::const_pointer_cast<const std::set<std::set<std::set<bool>>>>"(shared_ptr[cset[cset[cset[cbool]]]])

    cdef shared_ptr[const cset[vector[int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::set<std::vector<int32_t>>>"(shared_ptr[cset[vector[int32_t]]])

    cdef shared_ptr[const cset[string]] const_pointer_cast "std::const_pointer_cast<const std::set<std::string>>"(shared_ptr[cset[string]])

    cdef shared_ptr[const vector[cset[string]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::set<std::string>>>"(shared_ptr[vector[cset[string]]])

    cdef shared_ptr[const cmap[vector[cset[string]],string]] const_pointer_cast "std::const_pointer_cast<const std::map<std::vector<std::set<std::string>>,std::string>>"(shared_ptr[cmap[vector[cset[string]],string]])

    cdef shared_ptr[const cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]] const_pointer_cast "std::const_pointer_cast<const std::map<std::set<std::vector<int32_t>>,std::map<std::vector<std::set<std::string>>,std::string>>>"(shared_ptr[cmap[cset[vector[int32_t]],cmap[vector[cset[string]],string]]])

    cdef shared_ptr[const vector[Foo]] const_pointer_cast "std::const_pointer_cast<const std::vector<Foo>>"(shared_ptr[vector[Foo]])

    cdef shared_ptr[const vector[Bar]] const_pointer_cast "std::const_pointer_cast<const std::vector<Bar>>"(shared_ptr[vector[Bar]])

