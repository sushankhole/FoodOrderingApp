import 'package:flutter/material.dart';
import 'package:newdemo/HomePage.dart';
import 'package:newdemo/LoginPage.dart';
import 'package:newdemo/OrdersPage.dart';
import 'package:newdemo/Pages/Page0.dart';
import 'package:newdemo/PrivacyPage.dart';
import 'package:newdemo/SettingPage.dart';
import 'package:newdemo/TermsPage.dart';
import 'package:newdemo/Pages/Page1.dart';
import 'package:newdemo/Pages/Page2.dart';
import 'package:newdemo/Pages/Page3.dart';
import 'package:newdemo/Pages/Page4.dart';
import 'package:newdemo/screen/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Sush Kitchen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: WelcomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
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
                        child: Text("Offers"),
                      ),
                    ),
                  ]),
              // bottom: TabBar(
              //   tabs: [
              //     Tab(icon: Icon(Icons.fastfood)),
              //     Tab(icon: Icon(Icons.cake)),
              //     Tab(icon: Icon(Icons.fastfood)),
              //     Tab(icon: Icon(Icons.add_shopping_cart)),
              //   ],
              // ),
              title: Text(title)),
          body: TabBarView(
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
              Page0(),
            ],
          ),
//
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  // child: Text('FOGO FOOD'),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      image: DecorationImage(
                          image: AssetImage("assets/drw.jpg"),
                          fit: BoxFit.cover)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Home'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new HomePage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.restore,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Orders'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new OrdersPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Account'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new LoginPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_play,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Privacy Policy'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PrivacyPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.event,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Terms And Conditions'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new TermsPage()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Share Our Love'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.red.shade400,
                  ),
                  title: Text('Settings'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SettingPage()));
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 130.0,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
