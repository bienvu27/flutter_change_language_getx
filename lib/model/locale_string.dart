import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {

    // English Language
    'en_US':{
     'hello' : 'HELLO WORLD',
      'message': 'WELCOME TO PROTO CODERS POINT',
      'title': 'Flutter Language - Localization',
      'sub': 'Subscribe Now',
      'changelang': 'Change Language'
    },
    // Hindi Language
    'hi_IN':{
      'hello' : 'नमस्ते दुनिया',
      'message': 'प्रोटो कोडर्स पॉइंट में आपका स्वागत है',
      'title': 'स्पंदन भाषा - स्थानीयकरण',
      'sub': 'अब सदस्यता लें',
      'changelang': 'भाषा बदलो'
    },
    // Kannada Language
    'kn_IN':{
      'hello' : 'नमस्कार विश्व',
      'message': 'PROTO CODERS POINT इत्यत्र स्वागतम्',
      'title': 'फड़फड़ाहट भाषा - स्थानीयकरण',
      'sub': 'अब सब्सक्राइब करें',
      'changelang': 'भाषा परिवर्तयतु'
    },


  };
}