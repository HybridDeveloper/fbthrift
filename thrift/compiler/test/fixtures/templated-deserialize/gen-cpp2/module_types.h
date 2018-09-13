/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/GeneratedHeaderHelper.h>
#include <thrift/lib/cpp2/Thrift.h>
#include <thrift/lib/cpp2/gen/module_types_h.h>
#include <thrift/lib/cpp2/protocol/Protocol.h>


// BEGIN declare_enums
namespace cpp2 {

enum class MyEnumA {
  fieldA = 1,
  fieldB = 2,
  fieldC = 4
};

using _MyEnumA_EnumMapFactory = apache::thrift::detail::TEnumMapFactory<MyEnumA, MyEnumA>;
extern const _MyEnumA_EnumMapFactory::ValuesToNamesMapType _MyEnumA_VALUES_TO_NAMES;
extern const _MyEnumA_EnumMapFactory::NamesToValuesMapType _MyEnumA_NAMES_TO_VALUES;



} // cpp2
namespace std {


template<> struct hash<typename  ::cpp2::MyEnumA> : public apache::thrift::detail::enum_hash<typename  ::cpp2::MyEnumA> {};
template<> struct equal_to<typename  ::cpp2::MyEnumA> : public apache::thrift::detail::enum_equal_to<typename  ::cpp2::MyEnumA> {};


} // std

namespace apache { namespace thrift {


template <> struct TEnumDataStorage< ::cpp2::MyEnumA>;
#ifndef _MSC_VER
template <> const std::size_t TEnumTraits< ::cpp2::MyEnumA>::size;
template <> const folly::Range<const  ::cpp2::MyEnumA*> TEnumTraits< ::cpp2::MyEnumA>::values;
template <> const folly::Range<const folly::StringPiece*> TEnumTraits< ::cpp2::MyEnumA>::names;
#endif
template <> const char* TEnumTraits< ::cpp2::MyEnumA>::findName( ::cpp2::MyEnumA value);
template <> bool TEnumTraits< ::cpp2::MyEnumA>::findValue(const char* name,  ::cpp2::MyEnumA* outValue);

template <> inline constexpr  ::cpp2::MyEnumA TEnumTraits< ::cpp2::MyEnumA>::min() {
  return  ::cpp2::MyEnumA::fieldA;
}

template <> inline constexpr  ::cpp2::MyEnumA TEnumTraits< ::cpp2::MyEnumA>::max() {
  return  ::cpp2::MyEnumA::fieldC;
}


}} // apache::thrift


// END declare_enums
// BEGIN struct_indirection
namespace cpp2 {
struct apache_thrift_indirection_module_IndirectionA {
  template <typename T> static auto&& get(T&& x) {
    return std::forward<T>(x).value;
  }

  template <typename T> static auto&& get(T const&& x) {
    return std::forward<T>(x).value;
  }
};

struct apache_thrift_indirection_module_IndirectionC {
  template <typename T> static auto&& get(T&& x) {
    return std::forward<T>(x).__value();
  }

  template <typename T> static auto&& get(T const&& x) {
    return std::forward<T>(x).__value();
  }
};

struct apache_thrift_indirection_module_IndirectionB {
  template <typename T> static auto&& get(T&& x) {
    return std::forward<T>(x).value;
  }

  template <typename T> static auto&& get(T const&& x) {
    return std::forward<T>(x).value;
  }
};


} // cpp2
// END struct_indirection
// BEGIN forward_declare
namespace cpp2 {
class SmallStruct;
class containerStruct;
} // cpp2
// END forward_declare
// BEGIN typedefs
namespace cpp2 {
typedef Foo IndirectionA;
typedef Baz IndirectionC;
typedef Bar IndirectionB;

} // cpp2
// END typedefs
// BEGIN hash_and_equal_to
// END hash_and_equal_to
namespace cpp2 {
class SmallStruct final : private apache::thrift::detail::st::ComparisonOperators<SmallStruct> {
 public:

  SmallStruct() :
      small_A(0),
      small_B(0) {}
  // FragileConstructor for use in initialization lists only.
  SmallStruct(apache::thrift::FragileConstructor, bool small_A__arg, int32_t small_B__arg);
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<1, _T> arg) {
    small_A = arg.extract();
    __isset.small_A = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<2, _T> arg) {
    small_B = arg.extract();
    __isset.small_B = true;
  }

  SmallStruct(SmallStruct&&) = default;

  SmallStruct(const SmallStruct&) = default;

  SmallStruct& operator=(SmallStruct&&) = default;

  SmallStruct& operator=(const SmallStruct&) = default;
  void __clear();
  bool small_A;
  int32_t small_B;

  struct __isset {
    bool small_A;
    bool small_B;
  } __isset = {};
  bool operator==(const SmallStruct& rhs) const;
  bool operator<(const SmallStruct& rhs) const;

  bool get_small_A() const {
    return small_A;
  }

  bool& set_small_A(bool small_A_) {
    small_A = small_A_;
    __isset.small_A = true;
    return small_A;
  }

  int32_t get_small_B() const {
    return small_B;
  }

  int32_t& set_small_B(int32_t small_B_) {
    small_B = small_B_;
    __isset.small_B = true;
    return small_B;
  }

  template <class Protocol_>
  uint32_t read(Protocol_* iprot);
  template <class Protocol_>
  uint32_t serializedSize(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t serializedSizeZC(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t write(Protocol_* prot_) const;

 private:
  template <class Protocol_>
  void readNoXfer(Protocol_* iprot);

  friend class ::apache::thrift::Cpp2Ops< SmallStruct >;
};

void swap(SmallStruct& a, SmallStruct& b);
extern template void SmallStruct::readNoXfer<>(apache::thrift::BinaryProtocolReader*);
extern template uint32_t SmallStruct::write<>(apache::thrift::BinaryProtocolWriter*) const;
extern template uint32_t SmallStruct::serializedSize<>(apache::thrift::BinaryProtocolWriter const*) const;
extern template uint32_t SmallStruct::serializedSizeZC<>(apache::thrift::BinaryProtocolWriter const*) const;
extern template void SmallStruct::readNoXfer<>(apache::thrift::CompactProtocolReader*);
extern template uint32_t SmallStruct::write<>(apache::thrift::CompactProtocolWriter*) const;
extern template uint32_t SmallStruct::serializedSize<>(apache::thrift::CompactProtocolWriter const*) const;
extern template uint32_t SmallStruct::serializedSizeZC<>(apache::thrift::CompactProtocolWriter const*) const;

template <class Protocol_>
uint32_t SmallStruct::read(Protocol_* iprot) {
  auto _xferStart = iprot->getCurrentPosition().getCurrentPosition();
  readNoXfer(iprot);
  return iprot->getCurrentPosition().getCurrentPosition() - _xferStart;
}

} // cpp2
namespace apache { namespace thrift {

template <> inline void Cpp2Ops< ::cpp2::SmallStruct>::clear( ::cpp2::SmallStruct* obj) {
  return obj->__clear();
}

template <> inline constexpr apache::thrift::protocol::TType Cpp2Ops< ::cpp2::SmallStruct>::thriftType() {
  return apache::thrift::protocol::T_STRUCT;
}

template <> template <class Protocol> uint32_t Cpp2Ops< ::cpp2::SmallStruct>::write(Protocol* proto,  ::cpp2::SmallStruct const* obj) {
  return obj->write(proto);
}

template <> template <class Protocol> void Cpp2Ops< ::cpp2::SmallStruct>::read(Protocol* proto,  ::cpp2::SmallStruct* obj) {
  return obj->readNoXfer(proto);
}

template <> template <class Protocol> uint32_t Cpp2Ops< ::cpp2::SmallStruct>::serializedSize(Protocol const* proto,  ::cpp2::SmallStruct const* obj) {
  return obj->serializedSize(proto);
}

template <> template <class Protocol> uint32_t Cpp2Ops< ::cpp2::SmallStruct>::serializedSizeZC(Protocol const* proto,  ::cpp2::SmallStruct const* obj) {
  return obj->serializedSizeZC(proto);
}

}} // apache::thrift
namespace cpp2 {
class containerStruct final : private apache::thrift::detail::st::ComparisonOperators<containerStruct> {
 public:

  containerStruct();

  // FragileConstructor for use in initialization lists only.
  containerStruct(apache::thrift::FragileConstructor, bool fieldA__arg, std::map<std::string, bool> fieldB__arg, std::set<int32_t> fieldC__arg, std::string fieldD__arg, std::string fieldE__arg, std::vector<std::vector<std::vector<int32_t>>> fieldF__arg, std::map<std::string, std::map<std::string, std::map<std::string, int32_t>>> fieldG__arg, std::vector<std::set<int32_t>> fieldH__arg, bool fieldI__arg, std::map<std::string, std::vector<int32_t>> fieldJ__arg, std::vector<std::vector<std::vector<std::vector<int32_t>>>> fieldK__arg, std::set<std::set<std::set<bool>>> fieldL__arg, std::map<std::set<std::vector<int32_t>>, std::map<std::vector<std::set<std::string>>, std::string>> fieldM__arg, std::vector< ::cpp2::IndirectionA> fieldN__arg, std::vector< ::cpp2::IndirectionB> fieldO__arg, std::vector< ::cpp2::IndirectionC> fieldP__arg,  ::cpp2::MyEnumA fieldQ__arg, std::unique_ptr<std::map<std::string, bool>> fieldR__arg, std::unique_ptr< ::cpp2::SmallStruct> fieldS__arg, std::shared_ptr< ::cpp2::SmallStruct> fieldT__arg, std::shared_ptr<const  ::cpp2::SmallStruct> fieldU__arg, std::unique_ptr< ::cpp2::SmallStruct> fieldX__arg);
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<1, _T> arg) {
    fieldA = arg.extract();
    __isset.fieldA = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<2, _T> arg) {
    fieldB = arg.extract();
    __isset.fieldB = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<3, _T> arg) {
    fieldC = arg.extract();
    __isset.fieldC = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<4, _T> arg) {
    fieldD = arg.extract();
    __isset.fieldD = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<5, _T> arg) {
    fieldE = arg.extract();
    __isset.fieldE = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<6, _T> arg) {
    fieldF = arg.extract();
    __isset.fieldF = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<7, _T> arg) {
    fieldG = arg.extract();
    __isset.fieldG = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<8, _T> arg) {
    fieldH = arg.extract();
    __isset.fieldH = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<9, _T> arg) {
    fieldI = arg.extract();
    __isset.fieldI = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<10, _T> arg) {
    fieldJ = arg.extract();
    __isset.fieldJ = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<11, _T> arg) {
    fieldK = arg.extract();
    __isset.fieldK = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<12, _T> arg) {
    fieldL = arg.extract();
    __isset.fieldL = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<13, _T> arg) {
    fieldM = arg.extract();
    __isset.fieldM = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<14, _T> arg) {
    fieldN = arg.extract();
    __isset.fieldN = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<15, _T> arg) {
    fieldO = arg.extract();
    __isset.fieldO = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<16, _T> arg) {
    fieldP = arg.extract();
    __isset.fieldP = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<17, _T> arg) {
    fieldQ = arg.extract();
    __isset.fieldQ = true;
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<18, _T> arg) {
    fieldR = std::make_unique<std::decay_t<_T>>(arg.extract());
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<19, _T> arg) {
    fieldS = std::make_unique<std::decay_t<_T>>(arg.extract());
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<20, _T> arg) {
    fieldT = std::make_shared<std::decay_t<_T>>(arg.extract());
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<21, _T> arg) {
    fieldU = std::make_shared<std::decay_t<_T>>(arg.extract());
  }
  template <typename _T>
  void __set_field(::apache::thrift::detail::argument_wrapper<23, _T> arg) {
    fieldX = std::make_unique<std::decay_t<_T>>(arg.extract());
  }

  containerStruct(containerStruct&&) = default;
  containerStruct(const containerStruct& src);

  containerStruct& operator=(containerStruct&&) = default;
  containerStruct& operator=(const containerStruct& src);
  void __clear();

  ~containerStruct();

  bool fieldA;
  std::map<std::string, bool> fieldB;
  std::set<int32_t> fieldC;
  std::string fieldD;
  std::string fieldE;
  std::vector<std::vector<std::vector<int32_t>>> fieldF;
  std::map<std::string, std::map<std::string, std::map<std::string, int32_t>>> fieldG;
  std::vector<std::set<int32_t>> fieldH;
  bool fieldI;
  std::map<std::string, std::vector<int32_t>> fieldJ;
  std::vector<std::vector<std::vector<std::vector<int32_t>>>> fieldK;
  std::set<std::set<std::set<bool>>> fieldL;
  std::map<std::set<std::vector<int32_t>>, std::map<std::vector<std::set<std::string>>, std::string>> fieldM;
  std::vector< ::cpp2::IndirectionA> fieldN;
  std::vector< ::cpp2::IndirectionB> fieldO;
  std::vector< ::cpp2::IndirectionC> fieldP;
   ::cpp2::MyEnumA fieldQ;
  std::unique_ptr<std::map<std::string, bool>> fieldR;
  std::unique_ptr< ::cpp2::SmallStruct> fieldS;
  std::shared_ptr< ::cpp2::SmallStruct> fieldT;
  std::shared_ptr<const  ::cpp2::SmallStruct> fieldU;
  std::unique_ptr< ::cpp2::SmallStruct> fieldX;

  struct __isset {
    bool fieldA;
    bool fieldB;
    bool fieldC;
    bool fieldD;
    bool fieldE;
    bool fieldF;
    bool fieldG;
    bool fieldH;
    bool fieldI;
    bool fieldJ;
    bool fieldK;
    bool fieldL;
    bool fieldM;
    bool fieldN;
    bool fieldO;
    bool fieldP;
    bool fieldQ;
  } __isset = {};
  bool operator==(const containerStruct& rhs) const;
  bool operator<(const containerStruct& rhs) const;

  bool get_fieldA() const {
    return fieldA;
  }

  bool& set_fieldA(bool fieldA_) {
    fieldA = fieldA_;
    __isset.fieldA = true;
    return fieldA;
  }
  const std::map<std::string, bool>& get_fieldB() const&;
  std::map<std::string, bool> get_fieldB() &&;

  template <typename T_containerStruct_fieldB_struct_setter = std::map<std::string, bool>>
  std::map<std::string, bool>& set_fieldB(T_containerStruct_fieldB_struct_setter&& fieldB_) {
    fieldB = std::forward<T_containerStruct_fieldB_struct_setter>(fieldB_);
    __isset.fieldB = true;
    return fieldB;
  }
  const std::set<int32_t>& get_fieldC() const&;
  std::set<int32_t> get_fieldC() &&;

  template <typename T_containerStruct_fieldC_struct_setter = std::set<int32_t>>
  std::set<int32_t>& set_fieldC(T_containerStruct_fieldC_struct_setter&& fieldC_) {
    fieldC = std::forward<T_containerStruct_fieldC_struct_setter>(fieldC_);
    __isset.fieldC = true;
    return fieldC;
  }

  const std::string& get_fieldD() const& {
    return fieldD;
  }

  std::string get_fieldD() && {
    return std::move(fieldD);
  }

  template <typename T_containerStruct_fieldD_struct_setter = std::string>
  std::string& set_fieldD(T_containerStruct_fieldD_struct_setter&& fieldD_) {
    fieldD = std::forward<T_containerStruct_fieldD_struct_setter>(fieldD_);
    __isset.fieldD = true;
    return fieldD;
  }

  const std::string& get_fieldE() const& {
    return fieldE;
  }

  std::string get_fieldE() && {
    return std::move(fieldE);
  }

  template <typename T_containerStruct_fieldE_struct_setter = std::string>
  std::string& set_fieldE(T_containerStruct_fieldE_struct_setter&& fieldE_) {
    fieldE = std::forward<T_containerStruct_fieldE_struct_setter>(fieldE_);
    __isset.fieldE = true;
    return fieldE;
  }
  const std::vector<std::vector<std::vector<int32_t>>>& get_fieldF() const&;
  std::vector<std::vector<std::vector<int32_t>>> get_fieldF() &&;

  template <typename T_containerStruct_fieldF_struct_setter = std::vector<std::vector<std::vector<int32_t>>>>
  std::vector<std::vector<std::vector<int32_t>>>& set_fieldF(T_containerStruct_fieldF_struct_setter&& fieldF_) {
    fieldF = std::forward<T_containerStruct_fieldF_struct_setter>(fieldF_);
    __isset.fieldF = true;
    return fieldF;
  }
  const std::map<std::string, std::map<std::string, std::map<std::string, int32_t>>>& get_fieldG() const&;
  std::map<std::string, std::map<std::string, std::map<std::string, int32_t>>> get_fieldG() &&;

  template <typename T_containerStruct_fieldG_struct_setter = std::map<std::string, std::map<std::string, std::map<std::string, int32_t>>>>
  std::map<std::string, std::map<std::string, std::map<std::string, int32_t>>>& set_fieldG(T_containerStruct_fieldG_struct_setter&& fieldG_) {
    fieldG = std::forward<T_containerStruct_fieldG_struct_setter>(fieldG_);
    __isset.fieldG = true;
    return fieldG;
  }
  const std::vector<std::set<int32_t>>& get_fieldH() const&;
  std::vector<std::set<int32_t>> get_fieldH() &&;

  template <typename T_containerStruct_fieldH_struct_setter = std::vector<std::set<int32_t>>>
  std::vector<std::set<int32_t>>& set_fieldH(T_containerStruct_fieldH_struct_setter&& fieldH_) {
    fieldH = std::forward<T_containerStruct_fieldH_struct_setter>(fieldH_);
    __isset.fieldH = true;
    return fieldH;
  }

  bool get_fieldI() const {
    return fieldI;
  }

  bool& set_fieldI(bool fieldI_) {
    fieldI = fieldI_;
    __isset.fieldI = true;
    return fieldI;
  }
  const std::map<std::string, std::vector<int32_t>>& get_fieldJ() const&;
  std::map<std::string, std::vector<int32_t>> get_fieldJ() &&;

  template <typename T_containerStruct_fieldJ_struct_setter = std::map<std::string, std::vector<int32_t>>>
  std::map<std::string, std::vector<int32_t>>& set_fieldJ(T_containerStruct_fieldJ_struct_setter&& fieldJ_) {
    fieldJ = std::forward<T_containerStruct_fieldJ_struct_setter>(fieldJ_);
    __isset.fieldJ = true;
    return fieldJ;
  }
  const std::vector<std::vector<std::vector<std::vector<int32_t>>>>& get_fieldK() const&;
  std::vector<std::vector<std::vector<std::vector<int32_t>>>> get_fieldK() &&;

  template <typename T_containerStruct_fieldK_struct_setter = std::vector<std::vector<std::vector<std::vector<int32_t>>>>>
  std::vector<std::vector<std::vector<std::vector<int32_t>>>>& set_fieldK(T_containerStruct_fieldK_struct_setter&& fieldK_) {
    fieldK = std::forward<T_containerStruct_fieldK_struct_setter>(fieldK_);
    __isset.fieldK = true;
    return fieldK;
  }
  const std::set<std::set<std::set<bool>>>& get_fieldL() const&;
  std::set<std::set<std::set<bool>>> get_fieldL() &&;

  template <typename T_containerStruct_fieldL_struct_setter = std::set<std::set<std::set<bool>>>>
  std::set<std::set<std::set<bool>>>& set_fieldL(T_containerStruct_fieldL_struct_setter&& fieldL_) {
    fieldL = std::forward<T_containerStruct_fieldL_struct_setter>(fieldL_);
    __isset.fieldL = true;
    return fieldL;
  }
  const std::map<std::set<std::vector<int32_t>>, std::map<std::vector<std::set<std::string>>, std::string>>& get_fieldM() const&;
  std::map<std::set<std::vector<int32_t>>, std::map<std::vector<std::set<std::string>>, std::string>> get_fieldM() &&;

  template <typename T_containerStruct_fieldM_struct_setter = std::map<std::set<std::vector<int32_t>>, std::map<std::vector<std::set<std::string>>, std::string>>>
  std::map<std::set<std::vector<int32_t>>, std::map<std::vector<std::set<std::string>>, std::string>>& set_fieldM(T_containerStruct_fieldM_struct_setter&& fieldM_) {
    fieldM = std::forward<T_containerStruct_fieldM_struct_setter>(fieldM_);
    __isset.fieldM = true;
    return fieldM;
  }
  const std::vector< ::cpp2::IndirectionA>& get_fieldN() const&;
  std::vector< ::cpp2::IndirectionA> get_fieldN() &&;

  template <typename T_containerStruct_fieldN_struct_setter = std::vector< ::cpp2::IndirectionA>>
  std::vector< ::cpp2::IndirectionA>& set_fieldN(T_containerStruct_fieldN_struct_setter&& fieldN_) {
    fieldN = std::forward<T_containerStruct_fieldN_struct_setter>(fieldN_);
    __isset.fieldN = true;
    return fieldN;
  }
  const std::vector< ::cpp2::IndirectionB>& get_fieldO() const&;
  std::vector< ::cpp2::IndirectionB> get_fieldO() &&;

  template <typename T_containerStruct_fieldO_struct_setter = std::vector< ::cpp2::IndirectionB>>
  std::vector< ::cpp2::IndirectionB>& set_fieldO(T_containerStruct_fieldO_struct_setter&& fieldO_) {
    fieldO = std::forward<T_containerStruct_fieldO_struct_setter>(fieldO_);
    __isset.fieldO = true;
    return fieldO;
  }
  const std::vector< ::cpp2::IndirectionC>& get_fieldP() const&;
  std::vector< ::cpp2::IndirectionC> get_fieldP() &&;

  template <typename T_containerStruct_fieldP_struct_setter = std::vector< ::cpp2::IndirectionC>>
  std::vector< ::cpp2::IndirectionC>& set_fieldP(T_containerStruct_fieldP_struct_setter&& fieldP_) {
    fieldP = std::forward<T_containerStruct_fieldP_struct_setter>(fieldP_);
    __isset.fieldP = true;
    return fieldP;
  }

   ::cpp2::MyEnumA get_fieldQ() const {
    return fieldQ;
  }

   ::cpp2::MyEnumA& set_fieldQ( ::cpp2::MyEnumA fieldQ_) {
    fieldQ = fieldQ_;
    __isset.fieldQ = true;
    return fieldQ;
  }

  template <class Protocol_>
  uint32_t read(Protocol_* iprot);
  template <class Protocol_>
  uint32_t serializedSize(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t serializedSizeZC(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t write(Protocol_* prot_) const;

 private:
  template <class Protocol_>
  void readNoXfer(Protocol_* iprot);

  friend class ::apache::thrift::Cpp2Ops< containerStruct >;
};

void swap(containerStruct& a, containerStruct& b);
extern template void containerStruct::readNoXfer<>(apache::thrift::BinaryProtocolReader*);
extern template uint32_t containerStruct::write<>(apache::thrift::BinaryProtocolWriter*) const;
extern template uint32_t containerStruct::serializedSize<>(apache::thrift::BinaryProtocolWriter const*) const;
extern template uint32_t containerStruct::serializedSizeZC<>(apache::thrift::BinaryProtocolWriter const*) const;
extern template void containerStruct::readNoXfer<>(apache::thrift::CompactProtocolReader*);
extern template uint32_t containerStruct::write<>(apache::thrift::CompactProtocolWriter*) const;
extern template uint32_t containerStruct::serializedSize<>(apache::thrift::CompactProtocolWriter const*) const;
extern template uint32_t containerStruct::serializedSizeZC<>(apache::thrift::CompactProtocolWriter const*) const;

template <class Protocol_>
uint32_t containerStruct::read(Protocol_* iprot) {
  auto _xferStart = iprot->getCurrentPosition().getCurrentPosition();
  readNoXfer(iprot);
  return iprot->getCurrentPosition().getCurrentPosition() - _xferStart;
}

} // cpp2
namespace apache { namespace thrift {

template <> inline void Cpp2Ops< ::cpp2::containerStruct>::clear( ::cpp2::containerStruct* obj) {
  return obj->__clear();
}

template <> inline constexpr apache::thrift::protocol::TType Cpp2Ops< ::cpp2::containerStruct>::thriftType() {
  return apache::thrift::protocol::T_STRUCT;
}

template <> template <class Protocol> uint32_t Cpp2Ops< ::cpp2::containerStruct>::write(Protocol* proto,  ::cpp2::containerStruct const* obj) {
  return obj->write(proto);
}

template <> template <class Protocol> void Cpp2Ops< ::cpp2::containerStruct>::read(Protocol* proto,  ::cpp2::containerStruct* obj) {
  return obj->readNoXfer(proto);
}

template <> template <class Protocol> uint32_t Cpp2Ops< ::cpp2::containerStruct>::serializedSize(Protocol const* proto,  ::cpp2::containerStruct const* obj) {
  return obj->serializedSize(proto);
}

template <> template <class Protocol> uint32_t Cpp2Ops< ::cpp2::containerStruct>::serializedSizeZC(Protocol const* proto,  ::cpp2::containerStruct const* obj) {
  return obj->serializedSizeZC(proto);
}

}} // apache::thrift