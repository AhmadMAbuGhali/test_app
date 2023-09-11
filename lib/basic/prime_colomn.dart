import 'package:flutter/material.dart';
import 'package:test_app/advance/text_form.dart';

class PrimeColumn extends StatefulWidget {
  @override
  State<PrimeColumn> createState() => _PrimeColumnState();

}

final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _PrimeColumnState extends State<PrimeColumn> {
  int age = 20;

  bool hidePass = true;

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
      key: _scaffoldKey,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: signUpFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              CustomTextFormAuth(
                hintText: 'Hello',
                iconData: hidePass ? Icons.visibility_off : Icons.visibility,
                hidepassword: hidePass,
                pressSuffixIcon: () {
                  setState(() {
                    hidePass = !hidePass;
                  });
                },
                labelText: "Hello",
                textInputType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'passwordEmpty';
                  } else if (value.length < 5 || value == "11111") {
                    return 'Error Password';
                  } else if (value.length > 5) {
                    return null;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
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
                      setState(() {
                        if (signUpFormKey.currentState!.validate() != null) {
                          age = 77;
                        }
                      });
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
                    onTap: () {
                      setState(() {
                        print(age);
                        age = age + 1;
                        print(age);
                      });
                    },
                    child: Material(
                      shadowColor: Colors.red,
                      elevation: 30,
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 19, left: 20, top: 10, bottom: 7),
                        padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text(
                          "My Age $age",
                          style: TextStyle(fontSize: 39, color: Colors.white),
                        ),
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
                    onTap: () {
                      setState(() {
                        print(age);
                        age = age + 1;
                        print(age);
                      });
                    },
                    child: Material(
                      shadowColor: Colors.red,
                      elevation: 30,
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 19, left: 20, top: 10, bottom: 7),
                        padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text(
                          "My Age $age",
                          style: TextStyle(fontSize: 39, color: Colors.white),
                        ),
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
                    onTap: () {
                      setState(() {
                        print(age);
                        age = age + 1;
                        print(age);
                      });
                    },
                    child: Material(
                      shadowColor: Colors.red,
                      elevation: 30,
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 19, left: 20, top: 10, bottom: 7),
                        padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text(
                          "My Age $age",
                          style: TextStyle(fontSize: 39, color: Colors.white),
                        ),
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
                    onTap: () {
                      setState(() {
                        print(age);
                        age = age + 1;
                        print(age);
                      });
                    },
                    child: Material(
                      shadowColor: Colors.red,
                      elevation: 30,
                      child: Container(
                        margin: EdgeInsets.only(
                            right: 19, left: 20, top: 10, bottom: 7),
                        padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text(
                          "My Age $age",
                          style: TextStyle(fontSize: 39, color: Colors.white),
                        ),
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


