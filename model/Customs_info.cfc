component accessors="true" extends="easypost.model.ABModel" {

  property name="eel_pfc" type="String";
  property name="contents_type" type="String";
  property name="contents_explanation" type="String";
  property name="customs_certify" type="Boolean";
  property name="customs_signer" type="String";
  property name="non_delivery_option" type="String";
  property name="restriction_type" type="String";
  property name="restriction_comments" type="String";
  property name="customs_items" type="Array";

  public Customs_info function init(
    String eel_pfc = '',
    String contents_type = '',
    String contents_explanation = '',
    Boolean customs_certify = false,
    String customs_signer = '',
    String non_delivery_option = '',
    String restriction_type = '',
    String restriction_comments = '',
    Array customs_items = [],
    String object = 'CustomsInfo'
  ){

      super.init( argumentCollection = arguments );

    return THIS;
  }

}
