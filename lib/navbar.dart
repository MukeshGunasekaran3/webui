import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List navigaton = [
    {"name": "Overview", "icon": Icons.home},
    {"name": "Course", "icon": Icons.grid_view_rounded},
    {"name": "Resource", "icon": Icons.folder},
    {"name": "Message", "icon": Icons.message_rounded},
    {"name": "Seting", "icon": Icons.settings}
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.public,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "S E",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900], fontSize: 20),
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.radio_button_unchecked_sharp,
                size: 10,
                color: Colors.blue,
              ),
              Text(
                " T",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900], fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: List.generate(
                  navigaton.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Icon(
                              size: 20,
                              navigaton[index]["icon"],
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              navigaton[index]["name"],
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Image.asset("assets/images/meeting.png"),
          ),
          Expanded(
              child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.blue[50], borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("upgrade your plan"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "go to pro ",
                              style: TextStyle(color: Colors.blue, fontSize: 10),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
