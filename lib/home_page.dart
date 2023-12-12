import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('eh eh ehh vallagena'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.teal,
                child: Center(
                  child: Column(
                    children: [FlutterLogo(), Text('This is portrait mode')],
                  ),
                ),
              );
            } else {
              return Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.teal,
                child: Center(
                  child: Column(
                    children: [FlutterLogo(), Text('This is landscape mode')],
                  ),
                ),
              );
            }
          },
        ));
  }
}
