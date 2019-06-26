import 'package:flutter/material.dart';
import 'package:telegram/dash.dart';

void main() {
  runApp (MaterialApp(
    title: 'Telegram',
    debugShowCheckedModeBanner: false ,
    home: Scaffold(
      appBar: AppBar(
        title:Text('Telegram'),
        centerTitle: false,
        elevation: 2 ,
        backgroundColor: Colors.blueAccent,

        actions: <Widget>[
          Icon(Icons.verified_user),
          Icon(Icons.lock_open ),
          Icon(Icons.search),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('mohammadhasan'),
              accountEmail: Text('+98 9335090898'),
              currentAccountPicture: CircleAvatar(

              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('New Secret Chat'),
            ),
            ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text('New Channal'),
            ),
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top:60,bottom: 20,left: 15,right: 15),
            ),
          ]
        ),
      ),
    body: dash() ,
    ),
  ));
}