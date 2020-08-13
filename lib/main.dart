import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
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
  int ind = -1;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xffF2F3F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE9E9E9),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
//                controller: outputController,
//                readOnly: edit,
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                      filled: true,
                    ),
                  ),
                ),
              ),
              Container(
                height: 43,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chips.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          ind = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 27, vertical: 8),
                          decoration: BoxDecoration(
                              color: (index == ind)
                                  ? Colors.white
                                  : Color(0xff3A2361),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xff3A2361),
                                width: 1,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                chips[index],
                                style: TextStyle(
                                    color: (index == ind)
                                        ? Color(0xff3A2361)
                                        : Colors.white,
                                    letterSpacing: 0.02,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
//            Padding(
//                padding: const EdgeInsets.only(top: 12.0),
//                child: new StaggeredGridView.count(
//                  shrinkWrap: true,
//                  crossAxisCount: 3,
//                  staggeredTiles: _staggeredTiles,
//                  children: _tiles,
//                )),
              SizedBox(
                height: 10,
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.25,
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List.generate(2, (index) {
                  return Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(widgetList[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
//                  Column(
//                    children: [
////                      Container(
////                        width: 70,
////                        height: 65,
////                        decoration: BoxDecoration(
////                          borderRadius: BorderRadius.circular(6),
////                          image: DecorationImage(
////                              image: NetworkImage(symptoms[index].thumbnail),
////                              fit: BoxFit.cover),
////                        ),
////                      ),
////                      SizedBox(
////                        height: 11,
////                      ),
//                      Text(
//                        widgetList[index],
//                        style:
//                        TextStyle(color: Color(0xff202020), fontSize: 12),
//                      ),
//                    ],
//                  ),
                  );
                }),
              ),
              GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1,
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(widgetList[index + 2]),
                            fit: BoxFit.cover),
                      ),
                    ),
//                  Column(
//                    children: [
////                      Container(
////                        width: 70,
////                        height: 65,
////                        decoration: BoxDecoration(
////                          borderRadius: BorderRadius.circular(6),
////                          image: DecorationImage(
////                              image: NetworkImage(symptoms[index].thumbnail),
////                              fit: BoxFit.cover),
////                        ),
////                      ),
////                      SizedBox(
////                        height: 11,
////                      ),
//                      Text(
//                        widgetList[index],
//                        style:
//                        TextStyle(color: Color(0xff202020), fontSize: 12),
//                      ),
//                    ],
//                  ),
                  );
                }),
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(widgetList[5]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
//                          height: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(widgetList[7]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
//                          height: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(widgetList[6]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1,
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List.generate(3, (index) {
                  return Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(widgetList[index + 2]),
                            fit: BoxFit.cover),
                      ),
                    ),
//                  Column(
//                    children: [
////                      Container(
////                        width: 70,
////                        height: 65,
////                        decoration: BoxDecoration(
////                          borderRadius: BorderRadius.circular(6),
////                          image: DecorationImage(
////                              image: NetworkImage(symptoms[index].thumbnail),
////                              fit: BoxFit.cover),
////                        ),
////                      ),
////                      SizedBox(
////                        height: 11,
////                      ),
//                      Text(
//                        widgetList[index],
//                        style:
//                        TextStyle(color: Color(0xff202020), fontSize: 12),
//                      ),
//                    ],
//                  ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> widgetList = [
  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
  'https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg',
  'https://www.w3schools.com/w3css/img_lights.jpg',
  'https://killerattitudestatus.in/wp-content/uploads/2019/12/gud-night-images.jpg',
  'https://cdn.spacetelescope.org/archives/images/wallpaper2/heic2007a.jpg',
  'https://specials-images.forbesimg.com/imageserve/5ee7c0d5d48ca80007f4650c/960x0.jpg?fit=scale',
  'https://images.freeimages.com/images/small-previews/a0d/autumn-tree-1382832.jpg',
  'https://img.freepik.com/free-photo/room-with-concrete-floor-smoke-background_9083-2991.jpg?size=626&ext=jpg',
];
List<String> chips = ["POST", "FAMILY", "PEOPLE", "EVENT"];

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
