import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //   title: Text('尺寸限制类容器'),
          //   actions: <Widget>[
          //     SizedBox(
          //       width: 20,
          //       height: 20,
          //       child: CircularProgressIndicator(
          //         strokeWidth: 3,
          //         valueColor: AlwaysStoppedAnimation(Colors.white70),
          //       ),
          //     )
          //   ],

          //AppBar情况2
          title: Text('尺寸限制类容器'),
          actions: <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              ),
            )
          ],
        ),

        //情况1
        // body: ConstrainedBox(
        //     constraints: BoxConstraints(
        //         minWidth: double.infinity, //宽度尽可能大
        //         minHeight: 50.0 //最小高度为50像素
        //         ),
        //     child: SizedBox(width: 80.0, height: 80.0, child: redBox)
        //     )

        //情况2
        // body: ConstrainedBox(
        //   constraints: BoxConstraints.tightFor(width: 80.0, height: 80.0),
        //   child: redBox,
        // )

        //情况3
        // body: ConstrainedBox(
        //   constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
        //   child: ConstrainedBox(
        //     constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
        //     child: redBox,
        //   ),
        // ),

        //情况4 UnconstrainedBox
        // body: ConstrainedBox(
        //     constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
        //     child: UnconstrainedBox(
        //       //“去除”父级限制
        //       child: ConstrainedBox(
        //         constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
        //         child: redBox,
        //       ),
        //     )),

        body: Column(children: <Widget>[
          UnconstrainedBox(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(children: [Text('xx' * 90)]),
            ),
          ),
        ]));
  }
}
