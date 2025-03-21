import 'package:clean_architecture_button/features/domain/bt_call.dart';
import 'package:clean_architecture_button/features/presentation/state_management/event.dart';
import 'package:clean_architecture_button/features/presentation/state_management/text_state.dart';
import 'package:clean_architecture_button/utils/barel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  final BtCall btCall;
  TextBloc(this.btCall) : super(InitialState()) {
    on<TextEvent>((event, emit) async {
      if (event is ShowText) {
        emit(LoadingState());
        final text = await btCall.call();
        emit(LoadedState(text));
      }else {
        Text('fuck');
      }
    });
  }
}
