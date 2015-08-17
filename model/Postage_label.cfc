component accessors="true" extends="easypost.model.ABModel" {

  property name="test" type="String";

  public Postage_label function init(){
    return THIS;
  }

}
