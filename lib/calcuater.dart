import 'package:flutter/material.dart';

class AgeCount extends StatefulWidget {
  AgeCount({Key? key}) : super(key: key);
  int? calculatedDate;
  int? calculatedMonth;
  int? calculatedYear;
  bool isValid = true;

  @override
  State<AgeCount> createState() => _AgeCountState();
}

class _AgeCountState extends State<AgeCount> {
  TextEditingController pastDayController = TextEditingController();
  TextEditingController pastMonthController = TextEditingController();
  TextEditingController pastYearController = TextEditingController();
  TextEditingController thisDayController = TextEditingController();
  TextEditingController thisMonthController = TextEditingController();
  TextEditingController thisYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Age Count "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Enter Your Birth Date",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Day"),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red),
                          ),),
                        controller: pastDayController,
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height:MediaQuery.of(context).size.height*0.12,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [Text("Month"),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red),
                          ),),
                        controller: pastMonthController,
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [Text("Year"),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red),
                          ),),
                        controller: pastYearController,
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text("Enter Today Date", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.orange),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Day"),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red),
                          ),),
                        controller: thisDayController,
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [Text("Month"),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: widget.isValid
                                      ? Colors.greenAccent
                                      : Colors.red),
                        ),),
                        controller: thisMonthController,
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [Text("Year"),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.isValid
                                    ? Colors.greenAccent
                                    : Colors.red),
                          ),),
                        controller: thisYearController,
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text("Result", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Day"),
                      Text("${widget.calculatedDate??0}"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [Text("Month"),
                      Text("${widget.calculatedMonth??0}"),],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [Text("Year"),
                      Text("${widget.calculatedYear??0}"),],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    if (int.parse(pastDayController.text) <= 31 &&
                        int.parse(thisDayController.text) <= 31 &&
                        int.parse(pastMonthController.text) <= 12 &&
                        int.parse(thisMonthController.text) <= 12 &&
                        int.parse(pastYearController.text) >= 1800 &&
                        int.parse(thisYearController.text) >= 2000) {
                      findAge(int.parse(thisDayController.text), int.parse(
                          thisMonthController.text), int.parse(
                          thisYearController.text), int.parse(
                          pastDayController.text), int.parse(
                          pastMonthController.text), int.parse(
                          pastYearController.text));
                      widget.isValid =true;

                    }else{
                      widget.isValid =false;
                    }
                  });
                }, child: Text("Calculate")),
                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, "/t");
                  thisDayController.clear();
                  thisMonthController.clear();
                  thisYearController.clear();
                  pastDayController.clear();
                  pastMonthController.clear();
                  pastYearController.clear();
                  widget.calculatedMonth=0;
                  widget.calculatedDate=0;
                  widget.calculatedYear=0;
                }, child: Text("Reset"))
              ],
            )
          ],
        ),
      ),
    );
  }

  void findAge(int currentDate, int currentMonth, int currentYear,
      int birthDate, int birthMonth, int birthYear) {
    List<int> month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    if (birthDate > currentDate) {
      currentMonth = currentMonth - 1;
      currentDate = currentDate + month[birthMonth - 1];
    }

    if (birthMonth > currentMonth) {
      currentYear = currentYear - 1;
      currentMonth = currentMonth + 12;
    }

    widget.calculatedDate = currentDate - birthDate;
    widget.calculatedMonth = currentMonth - birthMonth;
    widget.calculatedYear = currentYear - birthYear;

    print("Present Age");
    print(
        "Years: ${widget.calculatedYear} Months: ${widget
            .calculatedMonth} Days: ${widget.calculatedDate}");
  }
}
