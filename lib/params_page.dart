import 'package:flutter/material.dart';

class ParamsPage extends StatefulWidget {
  final String text_value;
  final String text_nonik;
  final String text_notelp;
  final String text_alamat;
  final String text_umur;


  const ParamsPage({ Key? key, required this.text_value, required this.text_nonik, required this.text_alamat, required this.text_notelp, required this.text_umur }) : super(key: key);

  @override
  _ParamsPageState createState() => _ParamsPageState();
}

class _ParamsPageState extends State<ParamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
          Text(widget.text_value),
          Text(widget.text_nonik),
          Text(widget.text_notelp),
          Text(widget.text_alamat),
          Text(widget.text_umur),
          
        ],

        ),
        
    );
  }
}