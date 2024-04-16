import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  GridviewPage({super.key});
  final List<int> colorCodes = [700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("griview"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              padding: EdgeInsets.all(10),
              reverse: true,
              physics: NeverScrollableScrollPhysics(),
              //  scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 2,
              // physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.green[500],
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.green[400],
                ),
                Container(
                  height: 150,
                  color: Colors.green[300],
                ),
                Container(
                  height: 150,
                  color: Colors.green[200],
                ),
                Container(
                  height: 150,
                  color: Colors.green[100],
                ),
                Container(
                  height: 150,
                  color: Colors.green[500],
                ),
                Container(
                  height: 150,
                  color: Colors.green[400],
                ),
                Container(
                  height: 150,
                  color: Colors.green[300],
                ),
                Container(
                  height: 150,
                  color: Colors.green[200],
                ),
                Container(
                  height: 150,
                  color: Colors.green[100],
                ),
              ],
            ),
            Text('grid view builder fixedcross axis'),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: colorCodes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    color: Colors.pink[colorCodes[index]],
                  );
                }),
            SizedBox(
              height: 20,
            ),
            Text('gridview builder max cross axis extent'),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: colorCodes.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.7,
                    maxCrossAxisExtent: 150),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    color: Colors.pink[colorCodes[index]],
                  );
                })
          ],
        ),
      )),
    );
  }
}
