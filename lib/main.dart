import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/list_items_mobx/controller/home_controller.dart';
import 'main_example_mobx/home_page.dart';
import 'models/item.dart';

void main() {
  GetIt getIt = GetIt.I;
  // getIt.registerSingleton<Controller>(Controller());
  getIt.registerSingleton<HomeController>(HomeController());
  getIt.registerSingleton<Item>(Item());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//Provider

// MultiProvider(
//       providers: <SingleChildWidget>[
//         Provider<Controller>(
//           create: (_) => Controller(),
//           dispose: (_, controller) => controller.dispose(),
//         )
//       ],
