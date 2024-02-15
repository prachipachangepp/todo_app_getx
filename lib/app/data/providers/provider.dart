import 'dart:convert';

import 'package:get/get.dart';
import 'package:todo_app_getx/app/core/utils/keys.dart';
import 'package:todo_app_getx/app/data/services/services.dart';

import '../models/task.dart';

class TaskProvider{
  final _storage = Get.find<StorageService>();
  //
  // {'tasks':[
  // {
  //   'title': 'Work',
  // 'color': '#ff123456',
  // 'icon': 0xe123}
  // ]
//}
  List<Task> readTasks(){
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
    .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks){
    _storage.write(taskKey,jsonEncode(tasks));
  }
}