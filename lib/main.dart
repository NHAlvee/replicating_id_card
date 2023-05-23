import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'ID Card',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // // This call to setState tells the Flutter framework that something has
      // // changed in this State, which causes it to rerun the build method below
      // // so that the display can reflect the updated values. If we changed
      // // _counter without calling setState(), then the build method would not be
      // // called again, and so nothing would appear to happen.
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ID Card', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,//???
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.green.shade900),
                  width: MediaQuery.of(context).size.width,
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image(
                          image: AssetImage('images/iut.png'),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        child: Text(
                          'ISLAMIC UNIVERSITY OF TECHNOLOGY',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                    ],
                  ),

                ),
                Positioned(
                  bottom: -60,
                  child: SizedBox(
                    height: 110,
                    width: 110,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green[900]!,
                          width: 5.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/profile1.jpg',
                      ),
                    ),
                  ),
                ),
              ],

            ),
            const SizedBox(
              height: 100.0,
            ),
            Column(
              children: <Widget> [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.key),
                        Text('Student ID ',
                          style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.circle, color: Colors.blue,),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '190041109',
                        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              children: <Widget> [
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.person),
                        Text('Student Name ',
                          style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Navid Hasin Alvee',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email),
                Text('Email: ',
                  style: TextStyle(fontSize: 15),),
                Text('navidhasin@iut-dhaka.edu', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.school_rounded),
                Text('Program  ', style: TextStyle(fontSize: 15),),
                Text('BSc in CSE', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.group),
                Text('Department ', style: TextStyle(fontSize: 15),),
                Text('CSE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on_sharp),
                Text('Bangladesh', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(color: Colors.green[900]),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                'A subsidiary organ of OIC',
                style: TextStyle(fontSize:20, fontWeight: FontWeight.bold,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )

          ]),
    );
  }
}
