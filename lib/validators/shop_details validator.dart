

import 'dart:async';

mixin shop_details_validator{

  var shop_email_validator = StreamTransformer<String, String>.fromHandlers(
    handleData: (shop_email, sink){
      if(shop_email.contains("@")){
        sink.add(shop_email);
      }else sink.addError('Enter a email');
    }
  );
  var shop_name_validator = StreamTransformer<String, String>.fromHandlers(
    handleData: (shop_name, sink){
      if(shop_name.toUpperCase() == true){
        sink.add(shop_name);
      }else
        sink.addError("Enter Name");
    }
  );
  var shop_panno_validator = StreamTransformer<String, String>.fromHandlers(
    handleData: (shop_panno, sink){
      if(shop_panno.contains("0123456789")){
        sink.add(shop_panno);
      }else sink.addError('Enter pan');
    }
  );
  var shop_type_validator = StreamTransformer<String, String>.fromHandlers(
    handleData: (shop_type, sink){
      if(shop_type != null){
        sink.add(shop_type);
      }
    }
  );
}