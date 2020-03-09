// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Client on ClientBase, Store {
  final _$nameAtom = Atom(name: 'ClientBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$cpfAtom = Atom(name: 'ClientBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.context.enforceReadPolicy(_$cpfAtom);
    _$cpfAtom.reportObserved();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.context.conditionallyRunInAction(() {
      super.cpf = value;
      _$cpfAtom.reportChanged();
    }, _$cpfAtom, name: '${_$cpfAtom.name}_set');
  }

  final _$emailAtom = Atom(name: 'ClientBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$ClientBaseActionController = ActionController(name: 'ClientBase');

  @override
  dynamic changeName(String _name) {
    final _$actionInfo = _$ClientBaseActionController.startAction();
    try {
      return super.changeName(_name);
    } finally {
      _$ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String _cpf) {
    final _$actionInfo = _$ClientBaseActionController.startAction();
    try {
      return super.changeCpf(_cpf);
    } finally {
      _$ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String _email) {
    final _$actionInfo = _$ClientBaseActionController.startAction();
    try {
      return super.changeEmail(_email);
    } finally {
      _$ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},cpf: ${cpf.toString()},email: ${email.toString()}';
    return '{$string}';
  }
}
