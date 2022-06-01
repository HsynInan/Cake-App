import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          ExpansionTile(
            title: Text(
              "How can I return the products I bought?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'data',
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('data'),
                  )
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "When to make a refund?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'data',
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('data'),
                  )
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "Can I change the delivery address?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'data',
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('data'),
                  )
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "When will my order arrive?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'data',
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('data'),
                  )
                ],
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "How can i cancel the order?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'data',
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('data'),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
