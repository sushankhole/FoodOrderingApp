import 'package:flutter/material.dart';
import 'package:newdemo/OrdersPage.dart';
import 'package:newdemo/SettingPage.dart';
import 'package:newdemo/Pages/Page1.dart';
import 'package:newdemo/Pages/Page2.dart';
import 'package:newdemo/Pages/Page3.dart';
import 'package:newdemo/Pages/Page4.dart';
import 'package:newdemo/Pages/Page0.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SettingPage()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new OrdersPage()));
              },
            ),
          ],
          bottom: TabBar(
                  unselectedLabelColor: Colors.yellowAccent,
                  indicatorPadding: EdgeInsets.only(left: 30, right: 30),
                  indicator: ShapeDecoration(
                      color: Colors.redAccent,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Colors.redAccent,
                          ))),
              tabs: [
                Tab(
               
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("All"),
                  
                  ),
                ),
                Tab(
                 
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Break fast"),
                    
                  ),
                ),
                Tab(
                
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Dinner"),
                   
                  ),
                ),
                Tab(
                 
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Cold Drinks"),
                  
                  ),
                ),
                 Tab(
                  
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Offer"),
                    
                  ),
                ),
              ]),
          title: new Text("Home Page"),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page0(),
          ],
        ),
      ),
    );
  }
}
