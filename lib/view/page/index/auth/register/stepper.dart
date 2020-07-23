import 'package:flutter/material.dart';
import 'package:flutterxdana/constants.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

import '../../../../../data.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<Register> {

  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }
  StepperType stepperType = StepperType.horizontal;

  switchStepType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.vertical
        : stepperType = StepperType.horizontal);
  }

  List<Step> steps = [
    Step(
      title: const Text(''),
      isActive: true,
      content: Column(
        children: <Widget>[
          ListTile(
            leading: Text('1.'),
            title: SelectableText('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
              style: TextStyle(fontSize: 12),)
          ),
          ListTile(
              leading: Text('2.'),
              title: SelectableText('The data above has to be filled in complete and accuratly', style: TextStyle(fontSize: 12),)
          ),
          ListTile(
              leading: Text('3.'),
              title: SelectableText('The data above has to be filled in complete and accuratly', style: TextStyle(fontSize: 12),)
          ),
          ListTile(
              leading: Text('4.'),
              title: SelectableText('The data above has to be filled in complete and accuratly', style: TextStyle(fontSize: 12),)
          ),
          ListTile(
              leading: Text('5.'),
              title: SelectableText('The data above has to be filled in complete and accuratly', style: TextStyle(fontSize: 12),)
          ),
          ListTile(
              leading: Text('6.'),
              title: SelectableText('The data above has to be filled in complete and accuratly', style: TextStyle(fontSize: 12),)
          ),
        ],
      ),
    ),
    Step(
      isActive: true,
      title: const Text(''),
      content: PersonalData(),
    ),
    Step(
      title: const Text(''),
      isActive: true,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      isActive: true,
      title: const Text(''),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text(''),
      isActive: true,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      isActive: true,
      title: const Text(''),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
              type: stepperType,
              currentStep: currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          ),
        ]));
  }
}

