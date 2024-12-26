import 'package:flutter/material.dart';


class MyBottomNavBar extends StatelessWidget
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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

  }
