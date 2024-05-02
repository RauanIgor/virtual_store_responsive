import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:virtual_store/virtual_store_page.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        title: 'Virtual Store',
        debugShowCheckedModeBanner: false,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        home: const VirtualStorePage(),
      );
    },
  ));
}
