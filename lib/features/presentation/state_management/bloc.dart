import 'package:clean_architecture_button/utils/barel.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  final BtCall btCall;
  TextBloc(this.btCall) : super(InitialState()) {
    on<TextEvent>((event, emit) async {
      if (event is ShowText) {
        emit(LoadingState());
        final text = await btCall.call();
        emit(LoadedState(text));
      } else {
        Text('fuck');
      }
    });
  }
}
