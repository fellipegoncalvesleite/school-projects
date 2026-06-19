import 'package:calculadora_felipe/src/ui/view_models/home_view_model.dart';
import 'package:calculadora_felipe/src/ui/views/home/widgets/button.dart';
import 'package:calculadora_felipe/src/ui/views/home/widgets/display.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Calculadora",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 209, 208, 208),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Display(controller: _viewModel.displayController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button(
                text: "<",
                backgroundColor: Colors.grey,
                onPressed: () => _viewModel.onPressedDeleteCharacter(),
              ),
              Button(
                text: "C",
                backgroundColor: Colors.grey,
                onPressed: () => _viewModel.onPressedClear(),
              ),
              Button(
                text: "%",
                backgroundColor: Colors.grey,
                onPressed: () =>
                    _viewModel.onPressedOperation(Operation.percentage),
              ),
              Button(
                text: "÷",
                backgroundColor: Colors.orange,
                onPressed: () =>
                    _viewModel.onPressedOperation(Operation.divide),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button(
                text: "7",
                onPressed: () => _viewModel.onPressedDigit("7"),
              ),
              Button(
                text: "8",
                onPressed: () => _viewModel.onPressedDigit("8"),
              ),
              Button(
                text: "9",
                onPressed: () => _viewModel.onPressedDigit("9"),
              ),
              Button(
                text: "×",
                backgroundColor: Colors.orange,
                onPressed: () =>
                    _viewModel.onPressedOperation(Operation.multiply),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button(
                text: "4",
                onPressed: () => _viewModel.onPressedDigit("4"),
              ),
              Button(
                text: "5",
                onPressed: () => _viewModel.onPressedDigit("5"),
              ),
              Button(
                text: "6",
                onPressed: () => _viewModel.onPressedDigit("6"),
              ),
              Button(
                text: "−",
                backgroundColor: Colors.orange,
                onPressed: () =>
                    _viewModel.onPressedOperation(Operation.subtract),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button(
                text: "1",
                onPressed: () => _viewModel.onPressedDigit("1"),
              ),
              Button(
                text: "2",
                onPressed: () => _viewModel.onPressedDigit("2"),
              ),
              Button(
                text: "3",
                onPressed: () => _viewModel.onPressedDigit("3"),
              ),
              Button(
                text: "+",
                backgroundColor: Colors.orange,
                onPressed: () => _viewModel.onPressedOperation(Operation.add),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button(
                text: "0",
                width: 178,
                onPressed: () => _viewModel.onPressedDigit("0"),
              ),
              Button(text: ",", onPressed: () => _viewModel.onPressedDecimal()),
              Button(
                text: "=",
                backgroundColor: Colors.orange,
                onPressed: () => _viewModel.onPressedEvaluate(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
