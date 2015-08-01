component accessors="true" extends="easypost.model.ABModel" {

  property name="street1" type="String";
  property name="street2" type="String";
  property name="city" type="String";
  property name="state" type="String";
  property name="zip" type="String";
  property name="country" type="String";
  property name="name" type="String";
  property name="company" type="String";
  property name="phone" type="String";
  property name="email" type="String";
  property name="residential" type="boolean";

  public Address function init(
      String street1 = '',
      String street2 = '',
      String city = '',
      String state = '',
      String zip = '',
      String country = '',
      String name = '',
      String company = '',
      String phone = '',
      String email = '',
      Boolean residential = false,
      String object = 'Address'
  ){

    super.init( argumentCollection = arguments );

    return THIS;
  }

}
