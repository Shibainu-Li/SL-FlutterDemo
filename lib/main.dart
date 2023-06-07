import 'package:android_flutter_demo/file_route.dart';
import 'package:android_flutter_demo/scroll_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return  const FileRouteUi();
      }));
      _counter++;
    });


  }

  void toUi(ui){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return ui;
    }));
  }


  TextButton getTB(route,tx){
    return TextButton.icon(onPressed: (){ toUi(route); }, icon: const Icon(Icons.info), label: Text(tx));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getTB(ScrollWidgetUi(),"Scroll_Widget"),
            getTB(const FileRouteUi(), "File"),
          ],
        ),
      ),
    );
  }
}
