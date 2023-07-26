import 'package:flutter/material.dart';

class MenuBotton extends StatelessWidget {
  const MenuBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index){
        switch(index){
          case 0:
          Navigator.pushNamed(context, '/');
          break;
           case 1:
          Navigator.pushNamed(context, '/bmi');
          break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color:Colors.grey),
          label: 'home', backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.monitor_heart,color: Colors.grey,),
          label: 'Bim'
          ),
      ],
    );
  }
}