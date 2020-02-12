/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#include "thrift/compiler/test/fixtures/mcpp2-compare/gen-cpp2/enums_metadata.h"

namespace apache::thrift::detail::md {

using ThriftMetadata = ::apache::thrift::metadata::ThriftMetadata;

void EnumMetadata<::facebook::ns::qwerty::AnEnumA>::gen(ThriftMetadata& metadata) {
  auto res = metadata.enums.emplace("enums.AnEnumA", ::apache::thrift::metadata::ThriftEnum{});
  if (!res.second) {
    return;
  }
  ::apache::thrift::metadata::ThriftEnum& enum_metadata = res.first->second;
  enum_metadata.name = "enums.AnEnumA";
  for (const auto& p : ::facebook::ns::qwerty::_AnEnumA_VALUES_TO_NAMES) {
    enum_metadata.elements.emplace(static_cast<int32_t>(p.first), p.second) ;
  }
}
void EnumMetadata<::facebook::ns::qwerty::AnEnumB>::gen(ThriftMetadata& metadata) {
  auto res = metadata.enums.emplace("enums.AnEnumB", ::apache::thrift::metadata::ThriftEnum{});
  if (!res.second) {
    return;
  }
  ::apache::thrift::metadata::ThriftEnum& enum_metadata = res.first->second;
  enum_metadata.name = "enums.AnEnumB";
  for (const auto& p : ::facebook::ns::qwerty::_AnEnumB_VALUES_TO_NAMES) {
    enum_metadata.elements.emplace(static_cast<int32_t>(p.first), p.second) ;
  }
}
void EnumMetadata<::facebook::ns::qwerty::AnEnumC>::gen(ThriftMetadata& metadata) {
  auto res = metadata.enums.emplace("enums.AnEnumC", ::apache::thrift::metadata::ThriftEnum{});
  if (!res.second) {
    return;
  }
  ::apache::thrift::metadata::ThriftEnum& enum_metadata = res.first->second;
  enum_metadata.name = "enums.AnEnumC";
  for (const auto& p : ::facebook::ns::qwerty::_AnEnumC_VALUES_TO_NAMES) {
    enum_metadata.elements.emplace(static_cast<int32_t>(p.first), p.second) ;
  }
}
void EnumMetadata<::facebook::ns::qwerty::AnEnumD>::gen(ThriftMetadata& metadata) {
  auto res = metadata.enums.emplace("enums.AnEnumD", ::apache::thrift::metadata::ThriftEnum{});
  if (!res.second) {
    return;
  }
  ::apache::thrift::metadata::ThriftEnum& enum_metadata = res.first->second;
  enum_metadata.name = "enums.AnEnumD";
  for (const auto& p : ::facebook::ns::qwerty::_AnEnumD_VALUES_TO_NAMES) {
    enum_metadata.elements.emplace(static_cast<int32_t>(p.first), p.second) ;
  }
}
void EnumMetadata<::facebook::ns::qwerty::AnEnumE>::gen(ThriftMetadata& metadata) {
  auto res = metadata.enums.emplace("enums.AnEnumE", ::apache::thrift::metadata::ThriftEnum{});
  if (!res.second) {
    return;
  }
  ::apache::thrift::metadata::ThriftEnum& enum_metadata = res.first->second;
  enum_metadata.name = "enums.AnEnumE";
  for (const auto& p : ::facebook::ns::qwerty::_AnEnumE_VALUES_TO_NAMES) {
    enum_metadata.elements.emplace(static_cast<int32_t>(p.first), p.second) ;
  }
}

} // apache::thrift::detail::md
