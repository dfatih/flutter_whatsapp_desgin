import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/chat_model.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummyData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  dummyData[i].time,
                  style: new TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            subtitle: new Container(
                padding: const EdgeInsets.only(top: 5),
                child: new Text(
                  dummyData[i].message,
                  style: new TextStyle(color: Colors.grey, fontSize: 15),
                )),
          )
        ],
      ),
    );
  }
}
