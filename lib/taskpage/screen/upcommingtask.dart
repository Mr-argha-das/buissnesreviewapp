

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcommingTask extends StatefulWidget {
  const UpcommingTask({super.key});

  @override
  State<UpcommingTask> createState() => _UpcommingTaskState();
}

class _UpcommingTaskState extends State<UpcommingTask> {
  int tabSwaip = 0;
  List<Widget> tabs = const  [
    TaskTab(),
    MyTask(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabSwaip = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: tabSwaip == 0 ? Colors.white : Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "TASK",
                                style: GoogleFonts.dmSerifDisplay(
                                    color: tabSwaip == 0
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 22),
                              ),
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabSwaip = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: tabSwaip == 1 ? Colors.white : Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "MY TASK",
                                style: GoogleFonts.dmSerifDisplay(
                                    color: tabSwaip == 1
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 22),
                              ),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                tabs[tabSwaip]
              ],
            ),
          ),
        ));
  }
}


class TaskTab extends StatefulWidget {
  const TaskTab({super.key});

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListTile(
        title: Text("Project Name", style: GoogleFonts.dmSerifDisplay(color: Colors.black),),
        subtitle: Text("www.ahecounsling.com", style: GoogleFonts.dmSerifDisplay(color: Colors.grey),),
       ),
     );
    });
  }
}

class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}