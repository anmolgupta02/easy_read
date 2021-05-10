import 'package:flutter/material.dart';

void main() {
  runApp(TextReader());
}

class TextReader extends StatefulWidget {
  @override
  _TextReaderState createState() => _TextReaderState();
}

class _TextReaderState extends State<TextReader> {
  double textSize = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      //textInputAction: TextInputAction.done,
                      maxLines: null,
                      style: TextStyle(
                        fontSize: textSize,
                      ),
                    ),
                  ),
                  Slider(
                    min: 20,
                    max: 200,
                    value: textSize,
                    onChanged: (value) {
                      setState(() {
                        textSize = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
