import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';


class TaskPage extends StatefulWidget {
  const TaskPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: TopBar(username: 'John Doe', imageUrl: "https://static.wikia.nocookie.net/zelda/images/d/d4/Link_ssbu.jpg/revision/latest?cb=20180614072525&path-prefix=it"),
        body:Column(

          children:  [
            const Text("Add new Task:"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Title',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Description',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.8),
              child: FloatingActionButton.extended(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border_rounded),
                label: const Text("Save"),
                elevation: 0,
              ),
            ),
          ],
        )
    );
  }
}