/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package test.fixtures.enumstrict;


import com.facebook.thrift.IntRangeSet;
import java.util.Map;
import java.util.HashMap;

@SuppressWarnings({ "unused" })
public enum MyEnum implements com.facebook.thrift.TEnum {
  ONE(1),
  TWO(2);

  public static final Map<Integer, String> VALUES_TO_NAMES = new HashMap<Integer, String>();

  static {
    for (MyEnum e: values()) {
      VALUES_TO_NAMES.put(e.getValue(), e.name());
    }
  }

  private final int value;

  private MyEnum(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  public static MyEnum findByValue(int value) { 
    switch (value) {
      case 1:
        return ONE;
      case 2:
        return TWO;
      default:
        return null;
    }
  }
}