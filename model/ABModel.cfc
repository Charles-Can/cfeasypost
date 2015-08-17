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

  private any function createPayload( required any obj, string objName='' ){
    var payload = [];
    var baseName = arguments.objName;
    var props = getMetaData( arguments.obj );
    var handleArray='';

    if( structKeyExists( props, 'properties' ) ){
      props = props.properties;
    }else{
      props = [];
    }

    //setup name chain
    baseName = ( LEN( baseName ) ) ? baseName : LCASE( arguments.obj.getObject() );

    for( var key IN props ){
      if( listContainsNoCase( 'Boolean,String,Numeric', key.type ) ){
        arrayAppend( payload, { name=lcase('#baseName#[#key.name#]'), value=invoke( arguments.obj, 'get#key.name#' ), type=key.type } );
      }else{

        //handle array
        if( key.type EQ 'Array'){
          handleArray = function( required array toParse, required string nameChain ){
            var parsed = [];
            for( var i=1; i LTE arrayLen( arguments.toParse ); i++ ){
              parsed.addAll( createPayload( arguments.toParse[i], arguments.nameChain & '[#i-1#]' ) );
            }
            return parsed;
          };
          //arrayAppend( payload, handleArray( invoke( arguments.obj, 'get#key.name#' ), baseName & '[#key.name#]' ) );
          payload.addAll( handleArray( invoke( arguments.obj, 'get#key.name#' ), baseName & '[#key.name#]' ) );
        }else{
          payload.addAll( createPayload( invoke( arguments.obj, 'get#key.name#' ), baseName & '[#key.name#]' ) );
        }

      }

    }

    return payload;
  }

  private function send(
    required String method,
    required array payload
  ){

  }

  private function parseResult(){}

  public any function create(){
    var method = "POST";

    return createPayload( THIS );
  }
  public function retrieve(){}

}
