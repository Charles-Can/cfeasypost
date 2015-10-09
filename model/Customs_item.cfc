component accessors="true" extends="easypost.model.ABModel" {

  property name="description" type="String";
  property name="quantity" type="Numeric";//float
  property name="value" type="Numeric";//float
  property name="weight" type="Numeric";//float
  property name="hs_tariff_number" type="String";
  property name="origin_country" type="String";
  property name="currency" type="String";


  public Customs_item function init(
    String description = '',
    Numeric quantity = 0,
    Numeric value = 0,
    Numeric weight = 0,
    String hs_tariff_number  = '',
    String origin_country = '',
    String currency = '',
    String object = 'customsItem'
    ){

    super.init( argumentCollection = arguments );

    return THIS;
  }

}
