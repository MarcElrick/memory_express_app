import 'package:flutter/material.dart';
import 'package:memory_express_app/ui/TextCard.dart';

import '../api_requests.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: getAllCards(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                children: <Widget>[
                  TextCard(
                    front: (snapshot.data[0])['front'],
                    back: (snapshot.data[0])['back'],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {},
                        color: Colors.red,
                        iconSize: 75,
                      ),
                      IconButton(
                        icon: Icon(Icons.check_circle),
                        onPressed: () {},
                        color: Colors.green,
                        iconSize: 75,
                      )
                    ],
                  ),
                  Spacer()
                ],
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
