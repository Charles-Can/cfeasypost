component accessors="true" extends="easypost.model.ABModel" {

  property name="service" type="String";
  property name="carrier" type="String";
  property name="currency" type="String";
  property name="delivery_days" type="Numeric";
  property name="delivery_date" type="String";
  property name="delivery_date_guaranteed" type="boolean";
  property name="rate" type="string";

  public Rate function init(){
    return THIS;
  }

}
