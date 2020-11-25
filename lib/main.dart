import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:device_preview/device_preview.dart';


void main() {
  runApp(
      // DevicePreview(
          // enabled: !kReleaseMode,
          // builder: (context) =>
              MyApp(),
      // ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context), // Add the locale here
      // builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List createButtons() {
    List<Widget> btns = [];
    for (int i = 1; i <= 9; i++) {
      btns.add(ButtonTheme(
          height: 40.0,
          minWidth: 40.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red, width: 1.0)),
          child: RaisedButton(
            onPressed: () {},
            color: Colors.white,
            disabledColor: Colors.grey,
            child: Text(
              i.toString(),
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          )));
    }
    return btns;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // double key = GlobalKey();
    // double height = key.currentContext.size.height;

    return Scaffold(
        backgroundColor: const Color(0xffEA9178),
        body: Column(
          children: [
            Container(
              height: screenHeight / 1.5,
              color: const Color(0xfffcd4bb),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                      top: 0,
                      width: screenWidth,
                      height: screenHeight / 3,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(15.0),
                          color: const Color(0xfffcd4bb),
                          child: SizedBox(
                            width: screenWidth / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('803',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    'Americans are taking this Challenge with you today!',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    )),
                              ],
                            ),
                          ))),
                  Positioned(
                    bottom: 0,
                    width: screenWidth,
                    height: screenHeight / 3,
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(100)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Your personal goal for today:',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            Text(
                              'Eat at least one meatless meal',
                              style: TextStyle(
                                color: const Color(0xff60B05C),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.blue.shade700,
                              textColor: Colors.white,
                              padding: EdgeInsets.all(15.0),
                              child: Text("What to eat?", style: TextStyle(
                                fontSize: 18.0
                              ),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            // raisedButton
                            FlatButton(
                                onPressed: (){},
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Dietician Desk',
                                        style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 20.0),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.blue.shade900,
                                      )
                                    ]))
                          ],
                        )),
                  ),
                  Positioned(
                      width: 150.0,
                      height: 60.0,
                      top: (screenHeight / 3) - 30.0,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('Day 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                            )),
                        decoration: BoxDecoration(
                          color: const Color(0xff60B05C),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                      )),
                  Positioned(
                      width: screenWidth / 2,
                      height: 100.0,
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Your Challenge Group:',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('Sept 2020',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffe3977d),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40)),
                        ),
                      ))
                ],
              ),
            ),
            Container(
                height: screenHeight / 3 - kBottomNavigationBarHeight,
                color: Colors.white,
                child: Container(
                    padding: EdgeInsets.all(20.0),
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(120)),
                      color: const Color(0xffe3977d),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Daily Program',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0)),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: createButtons())),
                      ],
                    ))),
            // ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            // key: GlobalKey(),
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            backgroundColor: const Color(0xffe3977d),
            items: [
              BottomNavigationBarItem(
                backgroundColor: const Color(0xffEA9178),
                label: 'Daily',
                icon: Icon(Icons.access_time_rounded),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                label: 'Feed',
                icon: Icon(Icons.search_rounded),
              ),
              BottomNavigationBarItem(
                backgroundColor: const Color(0xffEA9178),
                label: 'Notifications',
                icon: Icon(
                  Icons.notifications_none_rounded,
                ),
              ),
            ]));
  }
}
