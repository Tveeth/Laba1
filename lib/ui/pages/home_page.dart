import 'package:first_app/mocks/delivery_mock.dart';
import 'package:first_app/models/delivery.dart';
import 'package:first_app/resources/app_image_assets.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/delivery_tile.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/termOfUse.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text(AppStrings.homePageTitle),
       */
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TermOfUse()));
          },
        ),
        title: Text(AppStrings.homePageTitle),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: DeliveryMock.delivery
              .map((delivery) => DeliveryTile(delivery: delivery))
              .toList(),
        ),
      ),
    );
  }
}
