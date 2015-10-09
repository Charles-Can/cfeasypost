component accessors="true" extends="easypost.model.ABModel" {

  property name="date_advance" type="Numeric";
  property name="integrated_form" type="String";
  property name="label_date" type="String";//@todo make into date object
  property name="label_epl2_url" type="String";
  property name="label_file_type" type="String";
  property name="label_pdf_url" type="String";
  property name="label_resolution" type="String";
  property name="label_size" type="String";
  property name="label_type" type="String";
  property name="label_url" type="String";
  property name="label_zpl_url" type="String";

  public Postage_label function init(
    Numeric date_advance = 0,
    String integrated_form = '',
    String label_date = '',
    String label_epl2_url = '',
    String label_file_type = '',
    String label_pdf_url = '',
    String label_resolution = '',
    String label_size = '',
    String label_type = '',
    String label_url = '',
    String label_zpl_url = '',
    String object = 'PostageLabel'
  ){

    super.init( argumentCollection = arguments );

    return THIS;
  }

}
