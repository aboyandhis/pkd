import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pkd/widgets/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '@patkellydesigns',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          color: Colors.white,
        ),
        primarySwatch: Colors.purple,
        primaryColor: Colors.yellow[300],
        accentColor: Colors.purple[300],
      ),
      home: MyHomePage(title: '@patkellydesigns'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return Scaffold(
      appBar: PAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton.icon(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              color: Theme.of(context).accentColor,
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.facebookF),
              label: Text('Login with facebook'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Message us',
        child: Icon(FontAwesomeIcons.facebookMessenger),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
