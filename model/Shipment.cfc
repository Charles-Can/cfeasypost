component accessors='true' extends="easypost.model.ABModel" {

  property name="to_address" type="Address";
  property name="from_address" type="Address";
  property name="return_address" type="Address";
  property name="buyer_address" type="Address";
  property name="parcel" type="Parcel";
  property name="customs_info" type="Customs_info";
  property name="scan_form" type="Scan_form";
  property name="rates" type="Array";
  property name="selected_rate" type="Rate";
  property name="forms" type="Array";
  property name="postage_label" type="Postage_label";
  property name="tracking_code" type="String";
  property name="carrier_accounts" type="Array";
  property name="refund_status" type="String";
  property name="insurance" type="Numeric";
  property name="batch_status" type="string";
  property name="batch_message" type="string";


  public Shipment function init(
    Address to_address = new Address(),
    Address from_address = new Address(),
    Address return_address = new Address(),
    Address buyer_address = new Address(),
    Parcel parcel = new Parcel(),
    Customs_info customs_info = new Customs_info(),
    Scan_form scan_form = new Scan_form(),
    Array rates = [],
    Rate selected_rate = new Rate(),
    Array forms = [],
    Postage_label postage_label = new Postage_label(),
    String tracking_code = '',
    Array carrier_accounts = [],
    String refund_status = '',
    Numeric insurance = 0,
    String batch_status = '',
    String batch_message = '',
    String object = 'Shipment'
  ){

    super.init( argumentCollection=arguments );

    return THIS;
  }

}
