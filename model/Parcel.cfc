component accessors="true" extends="easypost.model.ABModel" {

  property name="length" type="Numeric";
  property name="width" type="Numeric";
  property name="height" type="Nuermic";
  property name="predefined_package" type="String";
  property name="weight" type="Numeric";

  public Parcel function init(
    Numeric length,
    Numeric width,
    Numeric height,
    String predefined_package,
    Numeric weight,
    String object = 'Parcel'
  ){

    super.init( argumentCollection = arguments );

    return THIS;
  }

}
