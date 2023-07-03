import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/core/locaror.dart';
import 'package:provider_demo/core/router.dart';
import 'package:provider_demo/core/routes.dart';
import 'package:provider_demo/ui/provider_one.dart';
import 'package:provider_demo/ui/provider_two.dart';

void main() {
  setLocator();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => FirstNotifier()),
      ChangeNotifierProvider(create: (_) => SecondNotifier()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.homeScreen,
      onGenerateRoute: PageRouter.generateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
