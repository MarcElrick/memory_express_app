import 'package:flutter/material.dart';
import 'package:memory_express_app/ui/themes.dart';

class TextCard extends StatefulWidget {
  final String front;
  final String back;
  const TextCard({this.front, this.back});

  @override
  _TextCardState createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  var viewState = CardViewState.FRONT;
  var width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        width: width,
        height: width,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                viewState == CardViewState.FRONT ? "Question" : "Answer",
                style: Theme.of(context).textTheme.headline4,
              ),
              Spacer(),
              Text(
                  viewState == CardViewState.FRONT ? widget.front : widget.back,
                  style: textCardBodyStyle),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.swap_vertical_circle),
                  iconSize: 75,
                  onPressed: () {
                    setState(() {
                      if (this.viewState == CardViewState.FRONT) {
                        this.viewState = CardViewState.BACK;
                      } else {
                        this.viewState = CardViewState.FRONT;
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

enum CardViewState { FRONT, BACK }
