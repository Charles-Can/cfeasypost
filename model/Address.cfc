component accessors="true" extends="easypost.model.ABModel" {

  property name="name" type="string";

  public Address function init( string id = ''){

    super.init( argumentCollection = arguments );

    return THIS;
  }

}
