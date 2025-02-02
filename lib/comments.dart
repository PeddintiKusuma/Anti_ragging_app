import 'package:app1/app_button_widget.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({ Key? key }) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _decriptionContoller = TextEditingController();
  List<TodoTaskData> todoTaskList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

 
            
        
        title: Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.restorablePopAndPushNamed(
                    context, '/dashboardscreen');
              },
              child: Text("back",),

            ),
            SizedBox(
              width: 20,
            ),
          Text("Comments")
          ],
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "Question:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                        hintText: "Enter your question",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Suggestions:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    maxLines: 5,
                    controller: _decriptionContoller,
                    decoration: InputDecoration(
                        hintText: "give some suggestions",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                   appbuttonwidget(
                      title: "Submit",
                      titleColor: Colors.white,
                      buttonBackgroundColor: Color.fromRGBO(0, 0, 255, 1),
                      buttonBorderColor: Colors.transparent,
                      onPressed: () {
                        final todoTaskData = TodoTaskData(
                            title: _titleController.text,
                            decription: _decriptionContoller.text);
                        setState(() {
                          todoTaskList.add(todoTaskData);
                        });
                      })
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: todoTaskList.length,
                  itemBuilder: (context, index) {
                    final data = todoTaskList[index];
                    return Card(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Question asked:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red),
                              ),
                              Text(data.title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Suggestions given:",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(data.decription,
                                  maxLines: null,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ]),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

class TodoTaskData {
  String title;
  String decription;
  TodoTaskData({
    required this.title,
    required this.decription,
  });
}


/*

floatingActionButton: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Add Task",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("/addTodo");
        },
      ),
 */
