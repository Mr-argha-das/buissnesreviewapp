import 'package:buissensreviveapp/taskpage/screen/upcommingtask.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "YOUR WALLET",
                      style: GoogleFonts.montserrat(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(500),
                            ),
                            child: Center(
                              child: Text(
                                "₹",
                                style: GoogleFonts.dmSerifDisplay(
                                    color: Colors.white, fontSize: 42),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "1,555",
                                style: GoogleFonts.dmSerifDisplay(
                                    color: Colors.white, fontSize: 45),
                              ),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "RECENT CREDITS",
                      style: GoogleFonts.montserrat(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 3, // Number of columns
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(500)),
                            child: Center(
                                child: Text(
                              "₹500",
                              style: GoogleFonts.dmSerifDisplay(
                                  color: Colors.white, fontSize: 22),
                            )),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "24 FEB",
                            style: GoogleFonts.montserrat(),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "EXPLORE MARKET",
                      style: GoogleFonts.montserrat(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.black,
                      )),
                      const SizedBox(
                        width: 9,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.black,
                          )),
                          const SizedBox(
                        height: 9,
                      ),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                          )),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      );
  }
}


class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  List<Widget> pages = const [
    ScreenHome(),
    UpcommingTask(),
  ];
  int pageIndex= 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          pages[pageIndex],
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration:   BoxDecoration(
              color: Colors.white60,
              boxShadow: const  [
                BoxShadow(
                  color: Colors.white54,
                  spreadRadius: 10,
                  blurRadius: 50
                ),
              ],
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.vertical(top: Radius.elliptical(550, 100))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(500),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Center(
                        child: Icon(Icons.home_max_outlined, color: Colors.black, size: 30,),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 45,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(500),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Center(
                        child: Icon(Icons.task_alt_rounded, color: Colors.black, size: 45,),
                      ),
                  ),
                ),
                const SizedBox(width: 45,),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(500),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Center(
                      child: Icon(Icons.person_4_outlined, color: Colors.black, size: 30,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

