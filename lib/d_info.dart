library d_info;

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as _toast;
import 'package:get/get.dart' as _getx;

class DInfo {
  static Future<bool> dialogConfirmation(
    String title,
    String content, [
    String textNo = 'No',
    String textYes = 'Yes',
  ]) async {
    return await _getx.Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => _getx.Get.back(result: false),
            child: Text(textNo),
          ),
          TextButton(
            onPressed: () => _getx.Get.back(result: true),
            child: Text(textYes),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  static Future<bool> dialogConfirmationWith(
    BuildContext context,
    String title,
    String content, {
    String textNo = 'No',
    String textYes = 'Yes',
  }) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(textNo),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(textYes),
            ),
          ],
        );
      },
    );
  }

  static void dialogError(String message) {
    _getx.Get.dialog(
      SimpleDialog(
        children: [
          Center(
            child: Icon(
              Icons.error_outline_outlined,
              color: Colors.red[700],
              size: 40,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  static void dialogSuccess(String message) {
    _getx.Get.dialog(
      SimpleDialog(
        children: [
          Center(
            child: Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.green[700],
              size: 40,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  static void dialogNetral(String message, {IconData? icon}) {
    _getx.Get.dialog(
      SimpleDialog(
        children: [
          if (icon != null)
            Center(
              child: Icon(
                icon,
                color: Colors.blue[700],
                size: 40,
              ),
            ),
          if (icon != null) const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  static void closeDialog(
      {Duration? durationBeforeClose, Function? actionAfterClose}) {
    Future.delayed(
      durationBeforeClose ?? const Duration(milliseconds: 2500),
      () {
        _getx.Get.back();
        if (actionAfterClose != null) actionAfterClose.call();
      },
    );
  }

  static void toastError(String message, {bool isLong = false}) {
    _toast.Fluttertoast.showToast(
      msg: message,
      toastLength:
          isLong ? _toast.Toast.LENGTH_LONG : _toast.Toast.LENGTH_SHORT,
      gravity: _toast.ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red[100],
      textColor: Colors.red[900],
      fontSize: 16,
    );
  }

  static void toastSuccess(String message, {bool isLong = false}) {
    _toast.Fluttertoast.showToast(
      msg: message,
      toastLength:
          isLong ? _toast.Toast.LENGTH_LONG : _toast.Toast.LENGTH_SHORT,
      gravity: _toast.ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green[100],
      textColor: Colors.green[900],
      fontSize: 16,
    );
  }

  static void toastNetral(String message, {bool isLong = false}) {
    _toast.Fluttertoast.showToast(
      msg: message,
      toastLength:
          isLong ? _toast.Toast.LENGTH_LONG : _toast.Toast.LENGTH_SHORT,
      gravity: _toast.ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue[100],
      textColor: Colors.blue[900],
      fontSize: 16,
    );
  }

  static void closeToast() {
    _toast.Fluttertoast.cancel();
  }

  static void snackBarError(String message) {
    _getx.Get.rawSnackbar(
      messageText: Text(
        message,
        style: TextStyle(color: Colors.red[900]),
      ),
      snackStyle: _getx.SnackStyle.FLOATING,
      backgroundColor: Colors.red[100]!,
    );
  }

  static void snackBarSuccess(String message) {
    _getx.Get.rawSnackbar(
      messageText: Text(
        message,
        style: TextStyle(color: Colors.green[900]),
      ),
      snackStyle: _getx.SnackStyle.FLOATING,
      backgroundColor: Colors.green[100]!,
    );
  }

  static void snackBarNetral(String message) {
    _getx.Get.rawSnackbar(
      messageText: Text(
        message,
        style: TextStyle(color: Colors.blue[900]),
      ),
      snackStyle: _getx.SnackStyle.FLOATING,
      backgroundColor: Colors.blue[100]!,
    );
  }

  static void closeSnackBarOrNotif() {
    _getx.Get.closeAllSnackbars();
  }

  static void notifError(
    String title,
    String message, {
    double radius = 12,
    bool showBorder = false,
  }) {
    _getx.Get.snackbar(
      title,
      message,
      backgroundColor: Colors.red[100],
      colorText: Colors.red[900],
      borderColor: showBorder ? Colors.red[900] : Colors.transparent,
      borderRadius: radius,
      borderWidth: showBorder ? 1 : 0,
      isDismissible: false,
    );
  }

  static void notifSuccess(
    String title,
    String message, {
    double radius = 12,
    bool showBorder = false,
  }) {
    _getx.Get.snackbar(
      title,
      message,
      backgroundColor: Colors.green[100],
      colorText: Colors.green[900],
      borderColor: showBorder ? Colors.green[900] : Colors.transparent,
      borderRadius: radius,
      borderWidth: showBorder ? 1 : 0,
      isDismissible: false,
    );
  }

  static void notifNetral(
    String title,
    String message, {
    double radius = 12,
    bool showBorder = false,
  }) {
    _getx.Get.snackbar(
      title,
      message,
      backgroundColor: Colors.blue[100],
      colorText: Colors.blue[900],
      borderColor: showBorder ? Colors.blue[900] : Colors.transparent,
      borderRadius: radius,
      borderWidth: showBorder ? 1 : 0,
      isDismissible: false,
    );
  }
}
