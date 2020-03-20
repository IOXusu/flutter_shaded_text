import 'package:flutter/material.dart';
import 'package:flutter_shaded_text/flutter_shaded_text.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shaded Text Demo'),
      ),
      body: Center(
        child: ShadedText(
            text: 'Shaded Text',
            textColor: Color(0xffff0000),
            shadeColor: Color(0xff00ff00),
            shadeBuilder: (BuildContext context, String text, Color color) =>
                Container(
                  child: Text(
                    text,
                    style: TextStyle(color: color, fontSize: 28.0),
                  ),
                )),
      ),
    );
  }
}
