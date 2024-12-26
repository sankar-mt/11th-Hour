import 'package:flutter/material.dart';

class Hs2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
  height: 350.0,
  width: 350.0,
  color: Colors.transparent,
  padding: EdgeInsets.only(left:10,top:0,right:10),
  child: Container(
	decoration: BoxDecoration(
		color: Colors.green,
		borderRadius: BorderRadius.all(Radius.circular(10.0))),
	child: new Center(
	  child: new Text(" Rectangle Shape", 
	  style: TextStyle(color: Colors.white, fontSize: 22),
	  textAlign: TextAlign.center,),
	),
  ));
  }

}