#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref, typeid
from cpython.ref cimport PyObject
from thrift.py3.client cimport cRequestChannel_ptr, makeClientWrapper
from thrift.py3.exceptions cimport try_make_shared_exception, create_py_exception
from folly cimport cFollyTry, cFollyUnit, c_unit
from libcpp.typeinfo cimport type_info
import thrift.py3.types
cimport thrift.py3.types
from thrift.py3.types cimport move
import thrift.py3.client
cimport thrift.py3.client
from thrift.py3.common cimport RpcOptions as __RpcOptions
from thrift.py3.common import RpcOptions as __RpcOptions

from folly.futures cimport bridgeFutureWith
from folly.executor cimport get_executor
cimport folly.iobuf as __iobuf
import folly.iobuf as __iobuf
from folly.iobuf cimport move as move_iobuf
cimport cython

import sys
import types as _py_types
from asyncio import get_event_loop as asyncio_get_event_loop, shield as asyncio_shield, InvalidStateError as asyncio_InvalidStateError

cimport my.namespacing.extend.test.extend.types as _my_namespacing_extend_test_extend_types
import my.namespacing.extend.test.extend.types as _my_namespacing_extend_test_extend_types
cimport hsmodule.types as _hsmodule_types
import hsmodule.types as _hsmodule_types
cimport hsmodule.clients as _hsmodule_clients
import hsmodule.clients as _hsmodule_clients

from my.namespacing.extend.test.extend.clients_wrapper cimport cExtendTestServiceAsyncClient, cExtendTestServiceClientWrapper
from hsmodule.clients_wrapper cimport cHsTestServiceClientWrapper


cdef void ExtendTestService_check_callback(
    cFollyTry[cbool]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(<bint>result.value())
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))


cdef object _ExtendTestService_annotations = _py_types.MappingProxyType({
})


cdef class ExtendTestService(_hsmodule_clients.HsTestService):
    annotations = _ExtendTestService_annotations

    def __cinit__(ExtendTestService self):
        loop = asyncio_get_event_loop()
        self._connect_future = loop.create_future()
        self._deferred_headers = {}

    cdef const type_info* _typeid(ExtendTestService self):
        return &typeid(cExtendTestServiceAsyncClient)

    @staticmethod
    cdef _extend_ExtendTestService_set_client(ExtendTestService inst, shared_ptr[cExtendTestServiceClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._extend_ExtendTestService_client = c_obj
        _hsmodule_clients.HsTestService._hsmodule_HsTestService_set_client(inst, <shared_ptr[cHsTestServiceClientWrapper]>c_obj)

    cdef _extend_ExtendTestService_reset_client(ExtendTestService self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._extend_ExtendTestService_client.reset()
        _hsmodule_clients.HsTestService._hsmodule_HsTestService_reset_client(self)

    def __dealloc__(ExtendTestService self):
        if self._connect_future.done() and not self._connect_future.exception():
            print(f'thrift-py3 client: {self!r} was not cleaned up, use the async context manager', file=sys.stderr)
            if self._extend_ExtendTestService_client:
                deref(self._extend_ExtendTestService_client).disconnect().get()
        self._extend_ExtendTestService_reset_client()

    cdef bind_client(ExtendTestService self, cRequestChannel_ptr&& channel):
        ExtendTestService._extend_ExtendTestService_set_client(
            self,
            makeClientWrapper[cExtendTestServiceAsyncClient, cExtendTestServiceClientWrapper](
                thrift.py3.client.move(channel)
            ),
        )

    async def __aenter__(ExtendTestService self):
        await asyncio_shield(self._connect_future)
        if self._context_entered:
            raise asyncio_InvalidStateError('Client context has been used already')
        self._context_entered = True
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    def __aexit__(ExtendTestService self, *exc):
        self._check_connect_future()
        loop = asyncio_get_event_loop()
        future = loop.create_future()
        userdata = (self, future)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._extend_ExtendTestService_client).disconnect(),
            closed_ExtendTestService_py3_client_callback,
            <PyObject *>userdata  # So we keep client alive until disconnect
        )
        # To break any future usage of this client
        # Also to prevent dealloc from trying to disconnect in a blocking way.
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio_InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        return asyncio_shield(future)

    def set_persistent_header(ExtendTestService self, str key, str value):
        if not self._extend_ExtendTestService_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._extend_ExtendTestService_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    def check(
            ExtendTestService self,
            _hsmodule_types.HsFoo struct1 not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cbool](
            self._executor,
            deref(self._extend_ExtendTestService_client).check(rpc_options._cpp_obj, 
                deref((<_hsmodule_types.HsFoo>struct1)._cpp_obj),
            ),
            ExtendTestService_check_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)



cdef void closed_ExtendTestService_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata,
):
    client, pyfuture = <object> userdata 
    pyfuture.set_result(None)