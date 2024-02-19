import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

class UpcommingTask extends StatefulWidget {
  const UpcommingTask({super.key});

  @override
  State<UpcommingTask> createState() => _UpcommingTaskState();
}

class _UpcommingTaskState extends State<UpcommingTask> {
  int tabSwaip = 0;
  List<Widget> tabs = const [
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
                              color:
                                  tabSwaip == 0 ? Colors.white : Colors.black,
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
                              color:
                                  tabSwaip == 1 ? Colors.white : Colors.black,
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
                // if(tabSwaip == 0)...[
                //   const TaskTab(),
                // ],
                // if(tabSwaip == 1)...[
                //   const MyTask()
                // ]
                //            ListView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemBuilder: (context, index){
                //  return Padding(
                //    padding: const EdgeInsets.all(8.0),
                //    child: ListTile(
                //     title: Text("Project Name", style: GoogleFonts.dmSerifDisplay(color: Colors.black),),
                //     subtitle: Text("www.ahecounsling.com", style: GoogleFonts.dmSerifDisplay(color: Colors.grey),),
                //    ),
                //  );
                // }),
                ListView.builder(
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TaskTab();
                    })
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
            // context and builder are
            // required properties in this widget
            context: context,
            builder: (BuildContext context) {
              // we set up a container inside which
              // we create center column and display text

              // Returning SizedBox instead of a Container
              return SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Project Name",
                          style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black, fontSize: 22)),
                      Text("Project Link",
                          style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black, fontSize: 22)),
                      Text("Project Location",
                          style: GoogleFonts.dmSerifDisplay(
                              color: Colors.black, fontSize: 22)),
                              const SizedBox(
                                height: 50,
                              ),
                      Center(
                          child: SliderButton(
                        action: () async {
                          ///Do something here OnSlide
                           Navigator.pop(context);
                          return true;
                        },
                        label: Center(
                          child: Text(
                            "Slide to accept",
                            style: GoogleFonts.dmSerifDisplay(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        icon: const Text(
                          "👍",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 44,
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Card(
          child: ListTile(
            title: Text(
              "Project Name",
              style: GoogleFonts.dmSerifDisplay(color: Colors.black),
            ),
            subtitle: Text(
              "www.ahecounsling.com",
              style: GoogleFonts.dmSerifDisplay(color: Colors.grey),
            ),
            trailing: const Icon(Icons.done_all),
          ),
        ),
      ),
    );
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
