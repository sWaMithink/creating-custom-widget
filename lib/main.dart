import 'package:creating_custom_widgets_app/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Hello'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 70,
              child: RoundedButton(
                btnName: 'Login',
                icon: Icon(Icons.lock),
                callback: (){
                print('Logged in !!!');
              },
              textStyle: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              height: 11,
            ),
            Container(
              width: 150,
              height: 70,
              child: RoundedButton(
                btnName: 'Press',
                icon: Icon(Icons.play_circle),
                callback: (){
                  print('Playing...');
                },
                bgColor: Colors.orange,
                textStyle: TextStyle(fontSize: 21),
              ),
            ),
          ],
        ),

      )


    );
  }
}
