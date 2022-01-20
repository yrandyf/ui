import '/widgets/wizard_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddNewTripWidget4 extends StatelessWidget {
  AddNewTripWidget4(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});

  PageController controller;
  var cDuration;
  var cCurve;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starting Destination'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/svg/loc.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width * 0.5,
                  ),
                ],
              ),
              Text('Enter the Start Destination'),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_on_rounded),
                      hintText: 'Start Location',
                      labelText: 'Start Location',
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Get Current Location'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.2,
              ),
              WizardButtons(
                  controller: controller, cDuration: cDuration, cCurve: cCurve),
            ],
          ),
        ),
      ),
    );
  }
}
