import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

mostrarSnackbar(
    {required BuildContext context,
    required String texto,
    bool isErro = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(texto),
    backgroundColor: (isErro) ? Colors.red : Colors.green,
    shape: BeveledRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    duration: Duration(seconds: 3),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
