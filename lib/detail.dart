import 'package:flutter/material.dart';

class DetailIslam extends StatefulWidget {

  final String detailTitle;
  final String detailImg;

  DetailIslam({this.detailTitle, this.detailImg});

  @override
  _DetailIslamState createState() => _DetailIslamState();
}

class _DetailIslamState extends State<DetailIslam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(widget.detailTitle, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              Image.asset(widget.detailImg)
            ],
          ),
        ),
      ),
    );
  }
}
