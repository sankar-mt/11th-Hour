
import 'package:flutter/material.dart';
import 'package:proxy/homes1.dart';
import 'package:url_launcher/url_launcher.dart';

void _onItemTapped(int index) {
   customLaunch('https://www.google.com/maps/search/hospitals+in+Coimbatore,+Tamil+Nadu/@11.0418591,76.9448073,13z/data=!3m1!4b1');

    }
  




void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

class HP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
   
 return Scaffold(
       backgroundColor: Colors.black54,
   
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child:AppBar(
        centerTitle: true,
        title: Text("PROXY",style: TextStyle(fontFamily:'AB'
        ),),
    
        backgroundColor: Colors.black,
        )
       ),
      drawer:  Drawer(
            child: ListView(
              children: <Widget>[
                Text("one"),
                Text("two"),
                ButtonBar()
              ]
            )
          ),
      body: Hs1(),
      
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,size: 22,color: Colors.white,),
          title: Text('Home',style: TextStyle(color: Colors.white,fontFamily:'AB'),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map,size: 22,color: Colors.white,),

          title: Text('Maps',style: TextStyle(color: Colors.white,fontFamily:'AB'),),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,size: 22,color: Colors.white,),
          title: Text('settings',style: TextStyle(color: Colors.white,fontFamily:'AB'),),
        ),
      ],
      onTap: _onItemTapped,
      ),
 );


  }
  
  }


class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ListView(
         children:
           <Widget>[
                 Text("one"),
                Text("two"),
                ButtonBar()
              ]
            
          );
  }
  
}
  