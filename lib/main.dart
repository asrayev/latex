import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/get_data_cubit.dart';
import 'home_page.dart';
import 'package:flutter_tex/flutter_tex.dart';


import 'package:flutter/material.dart';



void main() {

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetDataCubit()..getData(index: 0),),
      ],

      child:  MyApp()));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  // This widget is the root of your application.
 //  String rawString = r'My name is ' + name + r' and I am ' + age.toString() + r' years old.';
   String formula = "\(ax^2 + bx + c = 0\)";
//   String rawString1 = r'When \(a \ne 0 \), there are two solutions to' + formula + r'and they are x = {-b \pm \sqrt{b^2-4ac} \over 2a}.';
  String value =             '''r"""When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are x = {-b \pm \sqrt{b^2-4ac} \over 2a}."""''';

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
      home: HomePage(),


//       Scaffold(
//         body: Column(
//           children: const [
//             SizedBox(height: 300,),
//             // Center(
//             //   child: Math.tex(
//             //     result,
//             //     textStyle: TextStyle(fontSize: 20),
//             //   ),
//             // ),
//
//             TeXView(
//           child: TeXViewColumn(children: [
//             TeXViewInkWell(
//               id: "id_0",
//               child: TeXViewColumn(children: [
//
//                 TeXViewDocument(
//                      r"""//
// When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
//                         $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$""",
//              // r"x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}",
//             // r"""When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are x = {-b \pm \sqrt{b^2-4ac} \over 2a}.""",
//                  // r"\hat f(\xi) = \int_{-\infty}^\infty f(x)e^{- 2\pi i \xi x}\mathrm{d}x",
//                  ///  escape(value),
//             //  value,
//            //   r'When \(a \ne 0 \), there are two solutions to' + formula + r'and they are x = {-b \pm \sqrt{b^2-4ac} \over 2a}.',
//            //       RegExp.escape(value),
//         //      r"$Hisoblang. \r\n$\\left( \\frac{1}{6}-1\\frac{1}{15}+\\frac{1}{10} \\right):0,6+0,4$$",
//             //  jsonDecode(r'{ "data":"'+value+r'"}')['data'],
//         //      r"""$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br> """,
//                 //  "Hisoblang. \r\n\\left( \\frac{1}{6}-1\\frac{1}{15}+\\frac{1}{10} \\right):0,6+0,4",
//                     // r"""<p>
//                     //    When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
//                     //    $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$</p>""",
//                     style: TeXViewStyle.fromCSS(
//                         'padding: 15px; color: white; background: green')),
//
//               ]),
//             )
//           ]),
//           style: TeXViewStyle(
//             elevation: 10,
//             borderRadius: TeXViewBorderRadius.all(25),
//             border: TeXViewBorder.all(TeXViewBorderDecoration(
//                 borderColor: Colors.blue,
//                 borderStyle: TeXViewBorderStyle.solid,
//                 borderWidth: 5)),
//             backgroundColor: Colors.white,
//           ),
//         ),
//
//
//           ],
//        )
//       ),
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
  @override
  void initState() {
    super.initState();
  }
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
escape(String s) { return s.replaceAllMapped(RegExp(r'[.*+?^${}()|[\]\\]'), (x) {return "\\${x[0]}";}); }
