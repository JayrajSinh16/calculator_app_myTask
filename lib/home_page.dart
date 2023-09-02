import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var n1=0, n2=0, sum=0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void doAddition(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1+n2;
    });
  }
  void doSubtraction(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1-n2;
    });
  }
  void doMul(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1*n2;
    });
  }
  void doDiv(){
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1~/n2;
    });
  }
  void doClear(){
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Output: $sum',
            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter 1st Number'),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter 2nd Number'),
              controller: t2,
            ),
            const Padding(padding: EdgeInsets.only(top: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: doAddition,child: const Text('+'),),
                MaterialButton(onPressed: doSubtraction,child: const Text('-'),),
              ],),
            const Padding(padding:  EdgeInsets.only(top: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: doMul,child: const Text('*'),),
                MaterialButton(onPressed: doDiv,child: const Text('/'),),
              ],),
            const Padding(padding: EdgeInsets.only(top: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: doClear,child: const Text('Clear'),),
              ],)
          ],
        ),
      ),
    );
  }

}