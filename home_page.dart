import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF075E54),
          title: Text('WhatsApp'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: getTop('CHATS', 5),
              ),
              Tab(
                child: getTop('STATUS', 3),
              ),
              Tab(
                child: getTop('CALLS', 7),
              )
            ],
          ),
        ),
        body: Center(
          child: Text('WhatsApp Tab Demo'),
        ),
      ),
    );
  }
}

Widget getTop(String title, int num) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '$title',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 5,
      ),
      CircleAvatar(
        radius: 10,
        backgroundColor: Colors.white,
        child: Text(
          '$num',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  );
}
