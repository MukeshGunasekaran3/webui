import 'package:flutter/material.dart';
import 'package:webui/navbar.dart';

class Uiscreen extends StatefulWidget {
  const Uiscreen({super.key});

  @override
  State<Uiscreen> createState() => _UiscreenState();
}

class _UiscreenState extends State<Uiscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(flex: 2, child: Navbar()),
            VerticalDivider(),
            Expanded(flex: 6, child: Text("")),
            VerticalDivider(),
            Expanded(flex: 4, child: Text(""))
          ],
        ),
      ),
    );
  }
}
