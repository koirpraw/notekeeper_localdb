import 'package:flutter/material.dart';
import 'package:notes_localdb/utils/constant.dart';
import 'package:notes_localdb/utils/dbhelper.dart';

class MyNotes extends StatefulWidget {
  const MyNotes({Key? key}) : super(key: key);

  @override
  _MyNotesState createState() => _MyNotesState();
}

class _MyNotesState extends State<MyNotes> {
  void showDialogAlert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(12.0),
        ),
        title: const Text("Add Task"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const TextField(
              autofocus: true,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ElevatedButton(onPressed: () {}, child: const Text("Add")),
              ),
            ])
          ],
        ),
      ),
    );
  }

  Widget mycard(String task) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 12,
        shadowColor: kTilesShadowColor,
        margin: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12.0))),

            child: ListTile(
              title: Text("$task", style: TextStyle(fontSize: 18),),
              onLongPress: () {
                print("delete task selecetd");
              },
            ),
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
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "My Notes",
          style: TextStyle( fontWeight: FontWeight.bold),
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


// 0xFFFF9000