
import 'package:get/get.dart';

class Language extends Translations {
  
   @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'getApiData': 'Get API Data',
          'Do_What_You_Love':'Do What You Love',
          'AND_SHARE_IT_WITH_THE_WORLD':'AND SHARE IT WITH THE WORLD',
          'Sign_Up':'Sign Up',
          'signup_message_2':'Create an account by filling in the following details',
          'signup_message_3':'Password must contain at least 8 characters, one capital letter, one number, and one special symbol',
          'signup_message_4':'Subscribe to our Newsletter... ',
          'signup_message_5':'I agree to all the Terms & Conditions',
          'signup_message_6':'Already have an account?',
          'Verify_Code':'Verify Code',
          'otp_message_2':'Please , check your email. we’ve sent you the code at name@email.com',
          'welComeBack':'Welcome Back!',
          'login_message_2':'You need to log in using your credentials',
          'Forgot_password':'Forgot Password',
          'login_message_3':'Don’t have an account?',
          'forgot_password_2':'Forgot Password?',
          'forgot_password_message_2':'Enter your email address and you will receive a verification code to reset your password...',
          'reset_password':'Reset Password?',
          'reset_password_message_2':'You’ll be able to login with your new password once more...',
          'reset_password_message_3':'Password must contain at least 8 characters, one capital letter, one number, and one special symbol'
        },
        
      };
}

// const Map<String, String> en_US = {
//   'helloWord': 'Hello World',
// };