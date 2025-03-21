abstract class TextState {}

class InitialState extends TextState {}

class LoadingState extends TextState {}

class LoadedState extends TextState {
  final String text;
  LoadedState(this.text);
}
