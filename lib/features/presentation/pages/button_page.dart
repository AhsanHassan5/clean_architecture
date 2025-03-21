import 'package:clean_architecture_button/features/presentation/state_management/bloc.dart';
import 'package:clean_architecture_button/features/presentation/state_management/event.dart';
import 'package:clean_architecture_button/features/presentation/state_management/text_state.dart';
import 'package:clean_architecture_button/features/presentation/widgets/error_widget.dart';
import 'package:clean_architecture_button/features/presentation/widgets/initial_widget.dart';
import 'package:clean_architecture_button/features/presentation/widgets/loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/barel.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  void increment() {
    context.read<TextBloc>().add(ShowText());
  }

  late BtCall btCall;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BlocBuilder<TextBloc, TextState>(
            builder: (context, state) {
              if (state is InitialState) {
                return const InitialWidget();
              } else if (state is LoadingState) {
                return const LoadingWidget();
              } else if (state is LoadedState) {
                return Text(
                  state.text,
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                );
              } else {
                return const ErrorWidgett();
              }
            },
          ),
          FloatingActionButton(
            onPressed: () => increment(),
            tooltip: ('press'),
            child: Icon(Icons.person_2_outlined),
          ),
        ],
      ),
    );
  }
}
