import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/form_mobx/form_component.dart';
import 'package:mobx_project/main_example_mobx/controller.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    // final _controller = Provider.of<Controller>(context);
    final _controller = GetIt.I.get<Controller>();

    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        children: <Widget>[
          Observer(builder: (_) {
            return Text(_controller.isValid ? "Valid Form" : "Invalid Form");
          }),
          FormComponent()
        ],
      ),
    );
  }
}
