component accessors="true" {

  property name="apiKey" type="string";
  property name="id" type="string";
  property name="object" type="string";
  property name="mode" type="string";
  property name="created_at" type="string";//switch to coldfusion Date
  property name="updated_at" type="string";//switch to coldfusion Date


  private void function init(){
    for( var item IN arguments ){
      if( !isNull( arguments[ item ] ) ){
        invoke( THIS, 'set#item#', { '#item#' = arguments[ item ] } );
      }
    }
  }

}
