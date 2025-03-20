import '../../../utils/barel.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  late BtCall btCall;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: btCall.call(),
      builder: (context, snapshot) {
        if (btCall.call() == true) {
          return ElevatedButton(
            onPressed: () {
              // btCall = BtCall as BtCall;
              btCall.call();
            },
            child: Text(
              'press',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          );
        } else {
          return Text('fuck');
        }
      },
    );
  }
}
