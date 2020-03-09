import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/main_example_mobx/controller.dart';

class FormComponent extends StatefulWidget {
  @override
  _FormComponentState createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  @override
  Widget build(BuildContext context) {
    // final _controller = Provider.of<Controller>(context);
    final _controller = GetIt.I.get<Controller>();

    _textField(
        {String label,
        onChanged,
        TextInputType inputType,
        String Function() error}) {
      return Observer(builder: (_) {
        return Container(
            margin: EdgeInsets.all(18),
            child: TextField(
              keyboardType: inputType,
              decoration: InputDecoration(
                  labelText: label,
                  border: OutlineInputBorder(),
                  errorText: error == null ? null : error()),
              onChanged: onChanged,
            ));
      });
    }

    _btnSubmit() {
      return Observer(builder: (_) {
        return ButtonTheme(
            minWidth: 408.0,
            child: RaisedButton(
              onPressed: _controller.isValid ? () {} : null,
              child: Text(
                "Submit".toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
            ));
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _textField(
            label: 'Name',
            onChanged: _controller.client.changeName,
            error: _controller.validadeName),
        _textField(
            label: 'CPF',
            inputType: TextInputType.number,
            onChanged: _controller.client.changeCpf,
            error: _controller.validadeCpf),
        _textField(
            label: 'Email',
            inputType: TextInputType.emailAddress,
            onChanged: _controller.client.changeEmail,
            error: _controller.validadeEmail),
        _btnSubmit()
      ],
    );
  }
}
