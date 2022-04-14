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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flexible'),
        ),
        body: FlexibleWidget(),
      ),
    );
  }
}

class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  State<FlexibleWidget> createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 100,
          child: Text('Item 1'),
          color: Colors.red,
        ),
        Flexible(
          flex: 5,
          fit: FlexFit.tight,
          child: Container(
            height: 100,
            child: Text('Item 1'),
            color: Colors.green,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            height: 100,
            child: Text('Item 1'),
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
