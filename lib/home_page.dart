import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0;
  var num2 = 0;
  num sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 / num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "😎 Calculator App 😙",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "Times New Roman",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: const Color.fromARGB(255, 130, 204, 241),
      body: Container(
        padding: EdgeInsets.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter the first number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 3),
                ),
              ),
              controller: t1,
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter the second number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 8, color: Colors.black12),
                ),
              ),
              controller: t2,
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: doAddition,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                MaterialButton(
                  color: Colors.redAccent,
                  onPressed: doSub,
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: doMul,
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                MaterialButton(
                  color: Colors.yellowAccent,
                  onPressed: doDiv,
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.deepOrangeAccent,
                  onPressed: doClear,
                  child: Text(
                    "Clear",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
