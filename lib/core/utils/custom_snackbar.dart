import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void infoSnackBar(BuildContext context, String title) {
  return showTopSnackBar(
    context,
    CustomSnackBar.info(
      message: title,
    ),
  );
}

void successSnackBar(BuildContext context, String title) {
  return showTopSnackBar(
    context,
    CustomSnackBar.success(
      message: title,
    ),
  );
}

void errorSnackBar(BuildContext context, String title) {
  return showTopSnackBar(
    context,
    CustomSnackBar.error(
      message: title,
    ),
  );
}
