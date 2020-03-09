// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormController on FormControllerBase, Store {
  Computed<String> _$fullNameComputed;

  @override
  String get fullName =>
      (_$fullNameComputed ??= Computed<String>(() => super.fullName)).value;

  final _$nameAtom = Atom(name: 'FormControllerBase.name');

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

  final _$secondNameAtom = Atom(name: 'FormControllerBase.secondName');

  @override
  String get secondName {
    _$secondNameAtom.context.enforceReadPolicy(_$secondNameAtom);
    _$secondNameAtom.reportObserved();
    return super.secondName;
  }

  @override
  set secondName(String value) {
    _$secondNameAtom.context.conditionallyRunInAction(() {
      super.secondName = value;
      _$secondNameAtom.reportChanged();
    }, _$secondNameAtom, name: '${_$secondNameAtom.name}_set');
  }

  final _$FormControllerBaseActionController =
      ActionController(name: 'FormControllerBase');

  @override
  dynamic changeName(String _name) {
    final _$actionInfo = _$FormControllerBaseActionController.startAction();
    try {
      return super.changeName(_name);
    } finally {
      _$FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSecondName(String _secondName) {
    final _$actionInfo = _$FormControllerBaseActionController.startAction();
    try {
      return super.changeSecondName(_secondName);
    } finally {
      _$FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},secondName: ${secondName.toString()},fullName: ${fullName.toString()}';
    return '{$string}';
  }
}
