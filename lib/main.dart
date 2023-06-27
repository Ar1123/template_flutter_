import 'package:flutter/material.dart';
import 'package:template_clean_architecture/injector.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();

  initDependencies();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
