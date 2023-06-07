
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileRouteUi extends StatelessWidget{
  const FileRouteUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FileRouteUi"),
      ),
      body: FileRoute(),
    );
  }

}

class FileRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState()  => FileRouteState();

}


class FileRouteState extends State<FileRoute>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("我是route ui"),
    );
  }

}