/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/gen/module_metadata_h.h>
#include <thrift/lib/thrift/gen-cpp2/metadata_types.h>
#include <thrift/compiler/test/fixtures/mcpp2-compare/gen-cpp2/module_types.h>
#include "thrift/compiler/test/fixtures/mcpp2-compare/gen-cpp2/includes_metadata.h"

namespace apache::thrift::detail::md {

using ThriftMetadata = ::apache::thrift::metadata::ThriftMetadata;

template <>
class EnumMetadata<::some::valid::ns::MyEnumA> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class EnumMetadata<::some::valid::ns::AnnotatedEnum> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class EnumMetadata<::some::valid::ns::AnnotatedEnum2> {
 public:
  static void gen(ThriftMetadata& metadata);
};
template <>
class EnumMetadata<::some::valid::ns::MyEnumB> {
 public:
  static void gen(ThriftMetadata& metadata);
};

} // apache::thrift::detail::md
