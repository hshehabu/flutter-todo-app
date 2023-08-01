import 'package:flutter/material.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(taskName: 'Buy Milk',),
        TaskTile(taskName: 'Buy detergent',),
        TaskTile(taskName: 'BUy something',)
      ],
    );
  }
}

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key, required this.taskName,
  });
final String taskName;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(widget.taskName),
      trailing:  Checkbox(value: isDone, onChanged: (value){
       setState(() {
         isDone = value!;
       });
      }),
    );
  }
}
