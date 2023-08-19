import 'package:flutter/material.dart';

class Agecc extends StatefulWidget {
  int? calculated;
  int? calculatem;
  int? calculatey;

  @override
  State<Agecc> createState() => _AgeccState();
}

class _AgeccState extends State<Agecc> {
  TextEditingController dy = TextEditingController();
  TextEditingController my = TextEditingController();
  TextEditingController yy = TextEditingController();
  TextEditingController dn = TextEditingController();
  TextEditingController mn = TextEditingController();
  TextEditingController yn = TextEditingController();

  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9d3f7),
        leading: const Icon(
          Icons.calculate_outlined,
          size: 40,
          color: Colors.purple,
        ),
        title: const Text(
          "My App Age Caculation..",
          style: TextStyle(color: Colors.deepPurple),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            setState(() {
              isClick =!isClick;
            });
          }, icon: Icon(isClick?Icons.add:Icons.remove,color: isClick?Colors.red:Colors.green,))
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Enter Your Birthdate",
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Day",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        controller: dy,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Month",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                        keyboardType: TextInputType.number,
                        controller: my,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Year",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: yy,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Enter Today Date ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Day",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: dn,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Month",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        controller: mn,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Year",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: yn,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Your Age is:",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Day",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${widget.calculated ?? 0}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Month",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${widget.calculatem ?? 0}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Year",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${widget.calculatey ?? 0}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        int dyf = int.parse(dy.text);
                        int myf = int.parse(my.text);
                        int yyf = int.parse(yy.text);
                        int cdf = int.parse(dn.text);
                        int cmf = int.parse(mn.text);
                        int cyf = int.parse(yn.text);
                        if (dyf <= 31 &&
                            cdf <= 31 &&
                            myf <= 12 &&
                            cmf <= 12 &&
                            cyf >= 2000 &&
                            yyf >= 1800) {
                          calcage(cdf, cmf, cyf, dyf, myf, yyf);
                        }
                        print(widget.calculated);
                        print(widget.calculatem);
                        print(widget.calculatey);
                      });
                    },
                    child: Text("Calculate Age")),
                Container(

                  decoration: BoxDecoration(
                    color: Color(0xffeA2DFA),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xffeA2DFA),width: 2)
                  ),
                  child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          dy.clear();
                          my.clear();
                          yy.clear();
                          dn.clear();
                          mn.clear();
                          yn.clear();
                        });
                        // widget.calculated=0;
                        //widget.calculatem=0;
                        //widget.calculatey=0;
                      },
                      child: Text("Reset")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void calcage(int cd, int cm, int cy, int yd, int ym, int yy) {
    List<int> months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    if (yd > cd) {
      cm = cm - 1;
      cd = cd + months[ym - 1];
      if ((ym == 2) && (ym % 4 == 0)) {
        cd = cd + 29;
      }
    }
    if (ym > cm) {
      cm = cm + 12;
      cy = cy - 1;
    }
    widget.calculated = cd - yd;
    widget.calculatem = cm - ym;
    widget.calculatey = cy - yy;
    print(widget.calculated);
    print(widget.calculatem);
    print(widget.calculatey);
  }
}
