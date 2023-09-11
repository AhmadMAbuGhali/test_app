import 'package:flutter/material.dart';

class BotSheet extends StatefulWidget {
  const BotSheet({super.key});

  @override
  State<BotSheet> createState() => _BotSheetState();
}

class _BotSheetState extends State<BotSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bootom Sheet"),
      ),
      body: Column(
        children: [
      Container(
        width: 100,
      height: 100,
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/goToLogin.png"),
        fit: BoxFit.fill),
    ),),
          Center(
            child: ElevatedButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (mm) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                        color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  height: 180,
                  child: Center(
                    child: ListView.builder(
                        itemCount: 70,
                        itemBuilder: (mm,index){
                      return Text("Hi");
                    })

                    ),
                  );

              });
            }, child: Text("افتح",style: TextStyle(fontFamily: 'Cairo',fontSize: 40),),),
          ),

        ],
      ),
    );
  }


}
