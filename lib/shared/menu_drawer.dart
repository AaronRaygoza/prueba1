import 'package:flutter/material.dart';
import '../screens/bmi_screen.dart';
import '../screens/intro_todscreen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        children:buildMenuItems(context)
      ),

    );
    }

    List<Widget> buildMenuItems(BuildContext context){
      final List<String> menuTitles = [
        'Home',
        'Bmi music',
        'Fotos',
        'Videos'
      ];
      List<Widget> menuItems = [];
        menuItems.add(DrawerHeader(
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Text('The Old Driver',
          style: TextStyle(color: Colors.black, fontSize: 32))));
      menuTitles.forEach((String element){
        Widget screen = Container();
        menuItems.add(ListTile(
          title: Text(element,
           style: TextStyle(fontSize: 20)),
          onTap: (){
            switch(element){
              case 'home':
              screen = TodIntro();
              break;
              case 'Bmi music':
              screen = BmiScreen();
              break;

            }
            Navigator.of(context).pop();
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => screen)
            );
          },
        ));
        
       });
return menuItems;

  }
}