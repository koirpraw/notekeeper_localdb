import 'package:flutter/material.dart';
import 'package:notes_localdb/dbhelper.dart';

class todoui extends StatefulWidget {
  const todoui({Key? key}) : super(key: key);

  @override
  _todouiState createState() => _todouiState();
}

class _todouiState extends State<todoui> {
  void showDialogAlert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        title: Text("Add Task"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              autofocus: true,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ElevatedButton(onPressed: () {}, child: Text("Add")),
            ])
          ],
        ),
      ),
    );
  }

  Widget mycard(String task) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            title: Text("$task"),
            onLongPress: () {
              print("delete task selecetd");
            },
          ),
        ),
      ),
    );
  }

  // final dbhelper = Databasehelper.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        onPressed: () {
          showDialogAlert();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "To Do",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("Finish Homework"),
            mycard("check on water level"),
            mycard("clean garage\n add shelfes\n tune up band saw"),
            mycard(
                "work on homepage UI and set up authentication flow for the social login and email logn"),
            mycard(
                "Grocery List\n eggs \n milk \n yoghurt \n whole chichen \n whole chicken \n toilet paper"
                "\n laundry detergent\n laundry detergent\n laundry detergent\n laundry detergent\n laundry detergent"),
            mycard("Finish Homework"),
            mycard("check on water level"),
            mycard("clean garage\n add shelfes\n tune up band saw"),
            mycard(
                "work on homepage UI and set up authentication flow for the social login and email logn"),
            mycard(
                "Grocery List\n eggs \n milk \n yoghurt \n whole chichen \n whole chicken \n toilet paper"
                "\n laundry detergent\n laundry detergent\n laundry detergent\n laundry detergent\n laundry detergent")
          ],
        ),
      ),
    );
  }
}
