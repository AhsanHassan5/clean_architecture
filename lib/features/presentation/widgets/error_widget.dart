import 'package:clean_architecture_button/utils/barel.dart';

class ErrorWidgett extends StatefulWidget {
  const ErrorWidgett({super.key});

  @override
  State<ErrorWidgett> createState() => _ErrorWidgettState();
}

class _ErrorWidgettState extends State<ErrorWidgett> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: Text('Error  Hai Bai'),
    );
  }
}
