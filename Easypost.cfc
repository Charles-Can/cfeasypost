component accessors='true'{

  property name="debug" type="boolean" default="false";

  import 'easypost.model.*';

  variables.apiKey='';

  public Easypost function init( required string apiKey ){

    variables.apiKey = arguments.apiKey;
    return THIS;

  }

  public any function onMissingMethod( string missingMethodName, struct missingMethodArguments ){
    var easypostObj={};

    //inject the apikey into each instance
    arguments.missingMethodArguments[ 'apiKey' ] = variables.apiKey;

    try {
      //the casing of the missingMethodName needs to be exact in some systems
      easypostObj = new "#arguments.missingMethodName#"( argumentCollection=arguments.missingMethodArguments );
    } catch( any e ){
      if( THIS.getDebug() ) rethrow;
    }

    if( StructIsEmpty( easypostObj ) ){
      throw( message = "#arguments.missingMethodName# Could not be found in Easypost objects.
      Check that your method invokation is spelled correctly or toggle debug mode on Easypost class." );
    }

    return easypostObj;
  }

}
