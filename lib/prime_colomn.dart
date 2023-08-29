import 'package:flutter/material.dart';

class PrimeColumn extends StatefulWidget {
  @override
  State<PrimeColumn> createState() => _PrimeColumnState();
}

class _PrimeColumnState extends State<PrimeColumn> {
int age = 20;
@override
  void initState() {
    // TODO: implement initState
  print("I enter the page");
    super.initState();
  }

  @override
  void dispose() {

  // TODO: implement dispose
  print("I Leave page");
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                print("Hi777ee");
              },
              child: Material(
                elevation: 40,
                child: Center(
                    child: Text(
                  "welocome to my programme ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.orange),
                )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    print("add 1");
                  },
                  onDoubleTap: () {
                    print("add 2");
                  },
                  onLongPress: () {
                    print("add 3");
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text("Add")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){


                    setState(() {
                      print(age);
                      age = age+1;
                      print(age);
                    });
                  },
                  child: Material(
                    shadowColor: Colors.red,
                    elevation: 30,
                    child: Container(
                      margin: EdgeInsets.only(right: 19,left: 20,top: 10,bottom: 7),
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 40),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Text("My Age $age",style: TextStyle(fontSize: 39,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    print("add 1");
                  },
                  onDoubleTap: () {
                    print("add 2");
                  },
                  onLongPress: () {
                    print("add 3");
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text("Add")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){


                    setState(() {
                      print(age);
                      age = age+1;
                      print(age);
                    });
                  },
                  child: Material(
                    shadowColor: Colors.red,
                    elevation: 30,
                    child: Container(
                      margin: EdgeInsets.only(right: 19,left: 20,top: 10,bottom: 7),
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 40),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Text("My Age $age",style: TextStyle(fontSize: 39,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    print("add 1");
                  },
                  onDoubleTap: () {
                    print("add 2");
                  },
                  onLongPress: () {
                    print("add 3");
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text("Add")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){


                    setState(() {
                      print(age);
                      age = age+1;
                      print(age);
                    });
                  },
                  child: Material(
                    shadowColor: Colors.red,
                    elevation: 30,
                    child: Container(
                      margin: EdgeInsets.only(right: 19,left: 20,top: 10,bottom: 7),
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 40),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Text("My Age $age",style: TextStyle(fontSize: 39,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    print("add 1");
                  },
                  onDoubleTap: () {
                    print("add 2");
                  },
                  onLongPress: () {
                    print("add 3");
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text("Add")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){


                    setState(() {
                      print(age);
                      age = age+1;
                      print(age);
                    });
                  },
                  child: Material(
                    shadowColor: Colors.red,
                    elevation: 30,
                    child: Container(
                      margin: EdgeInsets.only(right: 19,left: 20,top: 10,bottom: 7),
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 40),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Text("My Age $age",style: TextStyle(fontSize: 39,color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.yellow),
              child: Text('''My names Huda Keshta
                              My Age 43   '''),
            ),
            SizedBox(
              // height: 58,
              // width: 253,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    print("Hi");
                  },
                  child: Text("Helloasdkjashdlkjahsl")),
            ),
            ElevatedButton(onPressed: () => hello(), child: Text("Hello 3")),
            TextButton(
                onPressed: () {
                  print("Hi444");
                },
                child: Text("Hello")),
            IconButton(
                onPressed: () {
                  print("Hi2342");
                },
                icon: Icon(
                  Icons.calendar_month,
                  size: 50,
                  color: Colors.red,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(

        onPressed: () {
          print("FAB remove 1");
        },
label: Text("Hi"),
        icon: Icon(Icons.remove),
      ),
    );
  }
}

hello() {
  print("Hiii8 ");
}
