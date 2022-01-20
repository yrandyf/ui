import 'package:flutter/material.dart';

class WizardButtons extends StatelessWidget {
  const WizardButtons({
    Key? key,
    required this.controller,
    required this.cDuration,
    required this.cCurve,
  }) : super(key: key);

  final PageController controller;
  final cDuration;
  final cCurve;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
          child: Text(
            'Prev',
            style: TextStyle(fontSize: 15),
          ),
          onPressed: () {
            controller.previousPage(duration: cDuration, curve: cCurve);
          },
        ),
        TextButton(
          child: Text(
            'Next',
            style: TextStyle(fontSize: 15),
          ),
          onPressed: () {
            controller.nextPage(duration: cDuration, curve: cCurve);
          },
        )
      ],
    );
  }
}
