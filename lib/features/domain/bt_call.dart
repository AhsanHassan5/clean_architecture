import '../../utils/barel.dart';

class BtCall {
  final TextRepo dataFetch;
  BtCall(this.dataFetch);

  Future<String> call() async {
    return await dataFetch.fetchText();
  }
}
