import 'package:flutter/material.dart';

enum Operation { add, subtract, multiply, divide, percentage }

class HomeViewModel {
  final displayController = TextEditingController(text: "0");
  String _firstOperating = "";
  String _secondOperating = "";
  Operation? _operation;
  bool _isTypingSecondOperating = false;

  void onPressedDigit(String digit) {
    if (digit == "0" && _firstOperating.isEmpty) return;

    if (_secondOperating == "0") {
      _secondOperating = "";
    }

    if (_isTypingSecondOperating) {
      _secondOperating += digit;
    } else {
      _firstOperating += digit;
    }

    _updateDisplay();
  }

  void onPressedOperation(Operation operation) {
    if (_firstOperating.isEmpty) {
      _firstOperating = "0";
    }

    if (_firstOperating.endsWith(",")) {
      _firstOperating += "0";
    }

    if (_secondOperating.isNotEmpty) {
      onPressedEvaluate();
    }

    _operation = operation;

    _isTypingSecondOperating = true;

    _updateDisplay();
  }

  void onPressedDecimal() {
    if (_isTypingSecondOperating) {
      if (_secondOperating.contains(",")) return;

      if (_secondOperating.isEmpty) {
        _secondOperating = "0,";
      } else {
        _secondOperating += ",";
      }
    } else {
      if (_firstOperating.contains(",")) return;

      if (_firstOperating.isEmpty) {
        _firstOperating = "0,";
      } else {
        _firstOperating += ",";
      }
    }

    _updateDisplay();
  }

  void onPressedClear() {
    _firstOperating = "";
    _secondOperating = "";
    _operation = null;
    _isTypingSecondOperating = false;

    _updateDisplay();
  }

  void onPressedDeleteCharacter() {
    if (_secondOperating.isNotEmpty) {
      _secondOperating = _secondOperating.substring(
        0,
        _secondOperating.length - 1,
      );
    } else if (_isTypingSecondOperating) {
      _operation = null;
      _isTypingSecondOperating = false;
    } else if (_firstOperating.isNotEmpty) {
      _firstOperating = _firstOperating.substring(
        0,
        _firstOperating.length - 1,
      );
    }

    _updateDisplay();
  }

  void onPressedEvaluate() {
    if (_secondOperating.isEmpty) return;

    double firstOperatingParsed = double.parse(
      _firstOperating.replaceAll(",", "."),
    );
    double secondOperatingParsed = double.parse(
      _secondOperating.replaceAll(",", "."),
    );

    double result = 0.0;

    switch (_operation) {
      case Operation.add:
        result = firstOperatingParsed + secondOperatingParsed;
        break;
      case Operation.multiply:
        result = firstOperatingParsed * secondOperatingParsed;
        break;
      case Operation.subtract:
        result = firstOperatingParsed - secondOperatingParsed;
        break;
      case Operation.divide:
        result = firstOperatingParsed / secondOperatingParsed;
        break;
      case Operation.percentage:
        result = firstOperatingParsed * (secondOperatingParsed / 100);
        break;
      default:
        break;
    }

    onPressedClear();

    String formattedResult = result.toString().replaceAll(".", ",");

    if (formattedResult.endsWith(",0")) {
      formattedResult = formattedResult.substring(
        0,
        formattedResult.length - 2,
      );
    }

    _firstOperating = formattedResult;

    _updateDisplay();
  }

  void _updateDisplay() {
    if (_firstOperating.isEmpty) {
      displayController.text = "0";
      return;
    }

    if (!_isTypingSecondOperating) {
      displayController.text = _firstOperating;
      return;
    }

    displayController.text =
        "$_firstOperating ${_getOperationDisplayCharacter()} $_secondOperating";
  }

  String _getOperationDisplayCharacter() {
    switch (_operation) {
      case Operation.add:
        return "+";
      case Operation.multiply:
        return "×";
      case Operation.subtract:
        return "-";
      case Operation.divide:
        return "÷";
      case Operation.percentage:
        return "%";
      default:
        return "";
    }
  }
}
