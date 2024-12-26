import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Hs1 extends StatefulWidget
{
    @override
  _Hs1 createState() => _Hs1();
} 
void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

class _Hs1 extends State<Hs1> {
 
  final FixedExtentScrollController _controller = FixedExtentScrollController();
  List<Widget> listtiles = [
    
      Container(
  height: 700.0,
  width: 400.0,
  color: Colors.black,
  padding: EdgeInsets.only(left:10,top:20,right:10),
  child: Container(
	decoration: BoxDecoration(
		color: Colors.black,
    border: Border.all(
      color: Colors.white,
      width: 8,
    ),
		borderRadius: BorderRadius.all(Radius.circular(10.0))),
	child: new Center(
	  child: new Text("Hospitals", 
	  style: TextStyle(color: Colors.white, fontSize: 30,fontFamily: 'AB'),
	  textAlign: TextAlign.center,),
	)),
      ),
      
       Container(
  height: 700.0,
  width: 400.0,
  color: Colors.black,
  padding: EdgeInsets.only(left:10,top:20,right:10),
  child: Container(
	decoration: BoxDecoration(
		color: Colors.black,
    border: Border.all(
      color: Colors.white,
      width: 8,
    ),
		borderRadius: BorderRadius.all(Radius.circular(10.0))),
	child: new Center(
	  child: new Text("police", 
	  style: TextStyle(color: Colors.white, fontSize: 28,fontFamily:'AB'),
	  textAlign: TextAlign.center,),
	)),
      ),

       Container(
  height: 700.0,
  width: 400.0,
  color: Colors.black,
  padding: EdgeInsets.only(left:10,top:20,right:10),
  child: Container(
	decoration: BoxDecoration(
		color: Colors.black,
    border: Border.all(
      color: Colors.white,
      width: 8,
    ),
		borderRadius: BorderRadius.all(Radius.circular(10.0))),
	
	  child: new Text("Restaurants", 
    
	  style: TextStyle(color: Colors.white, fontSize: 22,fontFamily: 'AB'),
	  textAlign: TextAlign.center,),
    ),
     
  ),

    

      
       Container(
  height: 700.0,
  width: 400.0,
  color: Colors.black,
  padding: EdgeInsets.only(left:10,top:20,right:10),
  child: Container(
	decoration: BoxDecoration(
		color: Colors.black,
    border: Border.all(
      color: Colors.white,
      width: 8,
    ),
		borderRadius: BorderRadius.all(Radius.circular(10.0))),
	child: new Center(
	  child: new Text("Hotels", 
	  style: TextStyle(color: Colors.white, fontSize: 22,fontFamily:'AB'),
	  textAlign: TextAlign.center,),
	)),
      )

      ];


  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisSize: MainAxisSize.max,
     
      children: <Widget>[
Expanded( child:Container(
     child: Text('Choose from the options below!',textAlign: TextAlign.center, style: TextStyle(color:Colors.white,fontSize: 30,fontFamily:'AB'),
      
     ),
     padding: EdgeInsets.only(top:100),
     )
 ),

  Expanded( flex:2,
  child: Container(
                padding:EdgeInsets.only(bottom: 100),
                child : ListWheelScrollView(
            controller: _controller,
            itemExtent: 80,
            magnification: 1.2,
            useMagnifier: true,
            diameterRatio: 1.5,
            physics: FixedExtentScrollPhysics(),
            
            children: listtiles
          ),
    ),
    ),
 
    ]
    );
   

  }
}