import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:fluttersushiflr/FlareController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flare Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flare-Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FlareSimpleController _controller;

  _MyHomePageState() {
    _controller = FlareSimpleController('cat_ear');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text(widget.title)),
      body: GestureDetector(
        onTap: () => _controller.play('cat_ear'),
        onDoubleTap: () => _controller.play('rotate_cat_ear'),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: FlareActor(
                  //'assets/Sushi.flr',
                  'assets/test_ear.flr',
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  //animation: _animationName,
                  controller: _controller,
                )
              ),
            ],
          )
        )
      )
    );
  }
}
