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
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.8),
                child: ListView(
                  children:  [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  const [
                        TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'New Task Title',
                            ),
                            style: TextStyle(fontSize: 32), // <-- SEE HERE
                          ),
                        TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Simple Description',
                            ),
                            style: TextStyle(fontSize: 16),
                            maxLines: 5, // <-- SEE HERE
                            minLines: 1, // <-- SEE HERE// <-- SEE HERE
                          ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        "Status",
                                        style: TextStyle(fontSize: 18),
                                      )
                                  ),
                                ],
                              ),
                              const Text("Not Started")
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.access_time),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        "Due Time",
                                        style: TextStyle(fontSize: 18),
                                      )
                                  ),
                                ],
                              ),
                              const Text("18:00"),
                              const Text("August 10, 2022"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.adf_scanner_outlined),
                            Padding(
                                padding: EdgeInsets.only(left: 3.0),
                                child: Text("Tags")
                            ),
                          ],
                        ),
                        OutlinedButton.icon(
                          onPressed: () {
                            // Respond to button press
                          },
                          icon: const Icon(Icons.add, size: 18),
                          label: const Text("Add"),
                        )
                    ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.task_alt),
                            Padding(
                                padding: EdgeInsets.only(left: 3.0),
                                child: Text("SubTask")
                            ),
                          ],
                        ),
                        OutlinedButton.icon(
                          onPressed: () {
                            // Respond to button press
                          },
                          icon: const Icon(Icons.add, size: 18),
                          label: const Text("Add"),
                        )
                      ],
                    )
                  ]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.8),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      minimumSize: const Size.fromHeight(100), // NEW
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.bookmark_border_rounded),
                        Text(
                          'Save',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    )
                ),
              )
            ),
          ],
        )
    );
  }
}