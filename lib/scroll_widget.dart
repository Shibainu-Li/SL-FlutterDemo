
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollWidgetUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollWidgetUi'),
      ),
      body: ScrollWidget(),
    );
  }

}


class ScrollWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ScrollWidgetState();

}

class ScrollWidgetState extends State<ScrollWidget>{

  // ScrollView
  Scrollbar getScrollView(){
    String msg = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: msg.split("").map((e) => Text(e,textScaleFactor: 12,)).toList(),
          ),
        ),
      ),
    );
  }


  ListView getListView(){
    return ListView.builder(
        itemCount: 100,
        itemExtent: 50,
        itemBuilder: (BuildContext context ,int index){
          return ListTile(title: Text("$index"),onLongPress: (){
            print("你点击了: $index");
          },);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return getListView();
  }

}