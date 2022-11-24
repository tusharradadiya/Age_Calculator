import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class agecalculator extends StatefulWidget {
  const agecalculator({super.key});

  @override
  State<agecalculator> createState() => _agecalculatorState();
}

class _agecalculatorState extends State<agecalculator> {
  TextEditingController txtByear = TextEditingController();
  TextEditingController txtCyear = TextEditingController();
  String? Byear;
  String? Cyear;
  String? livedata1;
  String? livedata2;
  int? age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Age Calculator",style: TextStyle(color: Colors.black,fontSize: 25),),
      ),
      body: Container(
        color: Colors.white10,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("BirthDate $livedata1",style: TextStyle(fontSize: 25),),
            SizedBox(height: 10,),
            TextField(
              controller: txtByear,
              onChanged: (value,){
                setState(() {
                  livedata1 = value;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Birthdate"),
                  suffixIcon: Icon(Icons.cake)
              ),
            ),

            SizedBox(height: 30,),

            Text("CurrentDate $livedata2",style: TextStyle(fontSize: 25,),),
            SizedBox(height: 10,),
            TextField(
              controller: txtCyear,
              onChanged: (value,){
                setState(() {
                  livedata2 = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Currentdate"),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Center(
              child:
              ElevatedButton(onPressed: (){
                Byear =txtByear.text;
                Cyear =txtCyear.text;
                setState(() {
                  age = int.parse(Cyear!) - int.parse(Byear!);
                });
              },
                child: Text
                  ("count",style: TextStyle(color: Colors.black,fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text("your age is : $age",style: (TextStyle(color: Colors.black,fontSize: 20)),)),
          ],
        ),
      ),
    );
  }
}
