#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from folly.iobuf import IOBuf as __IOBuf
import thrift.py3.types
import thrift.py3.exceptions
from thrift.py3.types import NOTSET, NOTSETTYPE
from thrift.py3.serializer import Protocol
import typing as _typing

import sys
import itertools


__property__ = property


class Empty(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    def __init__(
        self, 
    ) -> None: ...

    def __call__(
        self, 
    ) -> Empty: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['Empty'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __bool__(self) -> bool: ...
    def __hash__(self) -> int: ...
    def __repr__(self) -> str: ...
    def __lt__(self, other: 'Empty') -> bool: ...
    def __gt__(self, other: 'Empty') -> bool: ...
    def __le__(self, other: 'Empty') -> bool: ...
    def __ge__(self, other: 'Empty') -> bool: ...



class Nada(thrift.py3.types.Union, _typing.Hashable):
    def __init__(
        self, 
    ) -> None: ...

    def __bool__(self) -> bool: ...
    def __hash__(self) -> int: ...
    def __repr__(self) -> str: ...
    def __lt__(self, other: 'Nada') -> bool: ...
    def __gt__(self, other: 'Nada') -> bool: ...
    def __le__(self, other: 'Nada') -> bool: ...
    def __ge__(self, other: 'Nada') -> bool: ...

    class Type(thrift.py3.types.Enum):
        EMPTY: Nada.Type = ...

    @staticmethod
    def fromValue(value: _typing.Union[]) -> Nada: ...
    @__property__
    def value(self) -> _typing.Union[]: ...
    @__property__
    def type(self) -> "Nada.Type": ...
    def get_type(self) -> "Nada.Type": ...

