import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class TodIntro extends StatelessWidget {
  const TodIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('The Old Drivers')),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBotton(),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                 image: AssetImage('assets/tod4.jpg'),
                 fit: BoxFit.cover,  
          )
          ),
          child: Center(
              child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(179, 24, 137, 54),
                      ),
                            child: Text('La app de  The Old Drivers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              shadows: [
                                Shadow(
                                offset: Offset(1.0,1.0),
                                blurRadius: 2.0,
                                color: Colors.yellow)
                              ]
                            ),),
              )),
              ));
  }
}

