import 'package:flutter/material.dart';

mixin BaseUiMixin {
   ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildShowSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  Center buildError() => const Center(child: Text("Error"));
}