component accessors='true' extends="easypost.model.ABModel" {

  property name="to_address" type="Address";
  property name="from_address" type="Address";
  property name="return_address" type="Address";
  property name="buyer_address" type="Address";
  property name="parcel" type="Parcel";


  public Shipment function init(
    string id = '',
    string object = '',
    string mode = '',
    Address to_address = new Address(),
    Address from_address = new Address(),
    Address return_address = new Address(),
    Address buyer_address = new Address(),
    Parcel parcel = new Parcel()

  ){

    super.init( argumentCollection=arguments );

    return THIS;
  }

}
