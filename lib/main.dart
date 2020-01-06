import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Business Car Application",
      home: BusinessCard(),
    ));

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Business Card'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[_getCard(), _getAvatar()],
          ),
          color: Colors.white,
        ));
  }

  Container _getCard() {
    return Container(
        width: 300,
        height: 200,
        margin: EdgeInsets.all(35),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GenerateBoldText("John Dhoe"),
            GenerateBoldText("Software Engineer"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.email), Text("Johndhoe@gmail.com")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.phone), Text("+254122000000")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.public), Text("www.johndhoe.com")],
            )
          ],
        ));
  }
}

class GenerateBoldText extends StatelessWidget {
  final String text;
  GenerateBoldText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class _getAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover)),
    );
  }
}
