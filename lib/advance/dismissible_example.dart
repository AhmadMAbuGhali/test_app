import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

List<String> item = [
  "Watch",
  "Jeans",
  "Shirt",
  "T-Shirt",
  "Cup",
  "Shoes",
  "Cap",
  "Shorts",
  "Trouser",
  "Lower",
];

class _DismissibleExampleState extends State<DismissibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: item.length,
          padding: EdgeInsets.symmetric(vertical: 10),
          itemBuilder: (context, index) {
            return Dismissible(
                background: Container(
                    color: Colors.blue,
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(children: const [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text('Move to favorites',
                              style: TextStyle(color: Colors.white)),
                        ]))),
                secondaryBackground: Container(
                    color: Colors.red,
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.delete, color: Colors.white),
                              SizedBox(width: 8.0),
                              Text('Move to trash',
                                  style: TextStyle(color: Colors.white)),
                            ]))),
                key: UniqueKey(),
                confirmDismiss: (DismissDirection direction) async {
                  return await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            title: const Text("Remove Gift"),
                            content: const Text(
                                "Are you sure you want to remove this item?"),
                            actions: <Widget>[
                              ElevatedButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(true),
                                  child: const Text("Yes")),
                              ElevatedButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: const Text("No"),
                              )
                            ]);
                      });
                },
                onDismissed: (DismissDirection direction) {
                  if (direction == DismissDirection.startToEnd) {
                    print("Add to Fav");
                  } else {
                    print("remove item");
                    setState(() {
                      item.removeAt(index);
                    });
                  }
                },
                child: ListTile(
                  leading: Icon(
                    Icons.card_giftcard_outlined,
                    color: Colors.black,
                  ),
                  title: Text(
                    item[index],
                    style: TextStyle(
                        fontSize: 10, color: Colors.black.withOpacity(0.6)),
                  ),
                  subtitle: Text(
                    "this Gift for you",
                    style: TextStyle(color: Colors.green.withOpacity(0.6)),
                  ),
                ));
          }),
    );
  }
}
