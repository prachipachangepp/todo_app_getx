
import 'package:get/get.dart';
import 'package:todo_app_getx/app/data/providers/provider.dart';
import 'package:todo_app_getx/app/module/home/controller.dart';

import '../../data/services/repository.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        )

    ));
  }
}