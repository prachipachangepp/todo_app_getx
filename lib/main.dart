import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app_getx/app/data/services/storage/services.dart';
import 'app/module/home/view.dart';

void main() async{
  await GetStorage.init();
  await Get.putAsync(()=> StorageService().init());
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Todo List  using Getx',
      home: HomePage(),
    );
  }
}
