import 'package:get/get.dart';

class LocalString extends Translations{
  @override


  // Others Language Function

  Map<String, Map<String, String >> get keys => {

    'en_US': {
      'hello':'Hello Flutter',
      'message': 'Dart Language',
      'title': 'Flutter Language ',
      'sub':'Succesful..',
      'changelang' : 'Change Language'
    },
    'hi_IN': {
      'hello':'हेलो फ़्लटर',
      'message': 'डार्ट भाषा',
      'title': 'स्पंदन भाषा ',
      'sub':'सफल..',
      'changelang' : 'भाषा बदलें'
    },
    'guj_gu': {
      'hello':'હેલો ફ્લટર',
      'message': 'ડાર્ટ ભાષા',
      'title': 'ફ્લટર ભાષા ',
      'sub':'સફળ..',
      'changelang' : 'ભાષા બદલો'
    },
  };
}