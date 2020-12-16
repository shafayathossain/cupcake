import 'package:cupcake/ui/shop/shop_mobile.dart';
import 'package:cupcake/ui/wave_shape.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: CustomPaint(
                  painter: UpWaveCustomPainter2(Color(0xFF642C99)),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50, top: 20),
                      child: CircleAvatar(
                        child: Image.asset("assets/images/img_cupcake.png"),
                        radius: 50,
                      ),
                    ),
                  )),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: ShopMobile(),
    );
  }
}
