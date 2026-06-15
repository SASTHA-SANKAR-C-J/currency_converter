import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/app/theme/app_colors.dart';

enum MessageLength { short, long }

enum MessageType { success, error }

class TheMessage {
  static void show(
      {required String message,
      required BuildContext context,
      MessageType type = MessageType.error}) {
    Flushbar(
      message: message.isNotEmpty
          ? message
          : 'Something went wrong, please try again',
      messageColor: Colors.white,

      flushbarStyle: FlushbarStyle.GROUNDED,
      icon: type == MessageType.error
          ? const Icon(Icons.error, color: Colors.white)
          : const Icon(Icons.check_circle, color: Colors.white),
      flushbarPosition: FlushbarPosition.TOP,
      animationDuration: const Duration(milliseconds: 500),
      backgroundColor:
          type == MessageType.error ?const Color(0xFFD14141) : AppColors.primaryColor,
      duration: const Duration(seconds: 5),
    ).show(context);
  }
}


