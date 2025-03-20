

import '../../utils/barel.dart';

class ButtonImpl implements TextRepo {
  @override
  Future<String> fetchText()async {
    await Future.delayed(Duration(seconds: 2));
    return 'Pakistan';
  }
  
}