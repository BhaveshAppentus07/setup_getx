
import 'package:get/get.dart';

class Language extends Translations {
  
   @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'getApiData': 'Get API Data'
        },
        
      };
}

// const Map<String, String> en_US = {
//   'helloWord': 'Hello World',
// };