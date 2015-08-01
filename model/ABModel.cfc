component accessors="true" {

  property name="apiKey" type="string";
  property name="id" type="string";
  property name="object" type="string";
  property name="mode" type="string";
  property name="created_at" type="string";//switch to coldfusion Date
  property name="updated_at" type="string";//switch to coldfusion Date

  variables.static.URL_BASE = 'https://api.easypost.com/v2';


  private void function init(){
    for( var item IN arguments ){
      if( !isNull( arguments[ item ] ) ){
        invoke( THIS, 'set#item#', { '#item#' = arguments[ item ] } );
      }
    }
  }

  private function serialize(){}
  private function send( required String method ){}
  private function parseResult(){}

  public function create(){}
  public function receive(){}

}
