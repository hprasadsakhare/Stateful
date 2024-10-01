import 'package:flutter/material.dart';

void main() {
  runApp(const counterapp());
}

class counterapp extends StatefulWidget {
  const counterapp({super.key});

  @override
  State<counterapp> createState() => _counterappState();
}
int count= 0;
class _counterappState extends State<counterapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("counterapp"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body:Center(
          child: Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            count++;
            setState(() {});
          },
          ),
      ),
    );
  }
}