import 'package:clean_architecture_button/utils/barel.dart';

class LoadedState extends StatefulWidget {
  final String text;
  const LoadedState({super.key, required this.text});

  @override
  State<LoadedState> createState() => _LoadedStateState();
}

class _LoadedStateState extends State<LoadedState> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text, style: Theme.of(context).textTheme.headlineLarge);
  }
}
