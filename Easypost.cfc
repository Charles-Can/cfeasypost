component {

  import 'easypost.model.*';

  variables.apiKey='';

  public Easypost function init( required string apiKey ){

    variables.apiKey = arguments.apiKey;
    return THIS;

  }

  public any function onMissingMethod( string missingMethodName, struct missingMethodArguments ){
    var easypostObj={};

    arguments.missingMethodArguments[ 'apiKey' ] = variables.apiKey;  

    try {
      easypostObj = new "#arguments.missingMethodName#"( argumentCollection=arguments.missingMethodArguments );
    } catch( any e ){
      rethrow;
    }

    if( StructIsEmpty( easypostObj ) ){
      throw( message = "#arguments.missingMethodName# Could not be found in Easypost objects." );
    }

    return easypostObj;
  }

}
