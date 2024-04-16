import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'gridview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewPage());
  }
}


class ListViewPage extends StatelessWidget {
   ListViewPage({super.key});
 final List<int> colorCodes = [500, 400, 300, 200, 100];
  final List listitems = [
    {"title": "Banana", "subtitle": "Good for health"},
    {"title": "Grapes", "subtitle": "Good for Eyes"},
    {"title": "Apple", "subtitle": "Good for Heart"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Click to Navigate to Gridview"),
        ),
        body: SafeArea(
          child: Container(
            color: const Color.fromRGBO(33, 150, 243, 1),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewPage()));
                      },
                      child: Container(
                        height: 100,
                        child: Center(child: Text("navigate to gridviews")),
                      )),
                      Divider(),
                  Text("listview"),
                  ListView(
                    shrinkWrap: true,
                    reverse: true, //reverse the list items
                    physics: NeverScrollableScrollPhysics(),
                    //  scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 50),
                    children: [
                      Container(
                        color: Colors.amber,
                        height: 200,
                        width: 50,
                      ),
                      Container(
                        color: Colors.purple,
                        height: 200,
                        width: 50,
                      ),
                      Container(
                        color: Colors.black,
                        height: 200,
                        width: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("listview builder"),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true, //if list view inside column
                      itemCount: colorCodes.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          color: Colors.amber[colorCodes[index]],
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Text("listview seperated builder"),
                  ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          color: Colors.pink[colorCodes[index]],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: colorCodes.length),
                  SizedBox(
                    height: 30,
                  ),
                  Text("listview with listtile"),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: listitems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.network(
                              "https://cdn.dribbble.com/users/4009983/screenshots/16047199/juraganmaterial-08_4x.jpg"),
                          title: Text(listitems[index]["title"]),
                          subtitle: Text(listitems[index]["subtitle"]),
                          trailing: Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      
    );
  }
}