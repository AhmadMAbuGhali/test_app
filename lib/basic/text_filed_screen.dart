import 'package:flutter/material.dart';

class TextFiledScreen extends StatefulWidget {
  TextFiledScreen({Key? key}) : super(key: key);
  int? calculatedDate;
  int? calculatedMonth;
  int? calculatedYear;

  bool validDate = true;
  bool isCalc = false;

  @override
  State<TextFiledScreen> createState() => _TextFiledScreenState();
}

class _TextFiledScreenState extends State<TextFiledScreen> {
  String? value = "";
  TextEditingController pastDayController = TextEditingController();
  TextEditingController pastMonthController = TextEditingController();
  TextEditingController pastYearController = TextEditingController();
  TextEditingController thisDayController = TextEditingController();
  TextEditingController thisMonthController = TextEditingController();
  TextEditingController thisYearController = TextEditingController();
  TextEditingController differenceDayController = TextEditingController();
  TextEditingController differenceMonthController = TextEditingController();
  TextEditingController differenceYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculater"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Enter Your Birth Date",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Day"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),
                        controller: pastDayController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Month"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),                        controller: pastMonthController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("year"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),                        controller: pastYearController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Enter Today  Date",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Day"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),                        controller: thisDayController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Month"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),                        controller: thisMonthController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("year"),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validDate
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),                        controller: thisYearController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Result",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Day"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "${widget.calculatedDate == null ? 0 : widget.calculatedDate}")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Month"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "${widget.calculatedMonth == null ? 0 : widget.calculatedMonth}")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("year"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "${widget.calculatedYear == null ? 0 : widget.calculatedYear}")
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
                        if (int.parse(pastDayController.text) <= 31 &&
                            int.parse(thisDayController.text) <= 31 &&
                            int.parse(pastMonthController.text) <= 12 &&
                            int.parse(thisMonthController.text) <= 12 &&
                            int.parse(pastYearController.text) >= 1800 &&
                            int.parse(thisYearController.text) >= 2000) {
                          findAge(
                              int.parse(thisDayController.text),
                              int.parse(thisMonthController.text),
                              int.parse(thisYearController.text),
                              int.parse(pastDayController.text),
                              int.parse(pastMonthController.text),
                              int.parse(pastYearController.text));
                          widget.validDate = true;
                          widget.isCalc = true;

                        } else {
                          widget.validDate = false;
                        }
                      });
                    },
                    child: Text("Calculate")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pastYearController.clear();
                        pastMonthController.clear();
                        pastDayController.clear();
                        thisMonthController.clear();
                        thisDayController.clear();
                        thisYearController.clear();
                        widget.calculatedYear = 0;
                        widget.calculatedMonth = 0;
                        widget.calculatedDate = 0;
                      });
                    },
                    child: Text("Reset")),
              ],
            ),
            Text(widget.isCalc? "Years: ${widget.calculatedYear} Months: ${widget.calculatedMonth} Days: ${widget.calculatedDate}":"")
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
        "Years: ${widget.calculatedYear} Months: ${widget.calculatedMonth} Days: ${widget.calculatedDate}");
  }
}
