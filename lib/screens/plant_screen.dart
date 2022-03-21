import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Plant_Shop_UI/models/plant_model.dart';

class PlantScreen extends StatefulWidget {
  final Plant plant;

  PlantScreen({this.plant});

  @override
  State<StatefulWidget> createState() {
    return _PlantScreenState();
  }
}

class _PlantScreenState extends State<PlantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   color: Color(0xFF32A060),
                    //   borderRadius: BorderRadius.only(
                    //       bottomLeft: Radius.circular(20.0),
                    //       bottomRight: Radius.circular(20.0)),
                    // ),
                    height: 520.0,
                    color: Color(0xFF32A060),
                    padding:
                        EdgeInsets.only(left: 30.0, right: 30.0, top: 45.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.arrow_back,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          widget.plant.category.toUpperCase(),
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          widget.plant.name,
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '\$${widget.plant.price}',
                          style: TextStyle(color: Colors.white, fontSize: 27.0),
                        ),
                        SizedBox(height: 40.0),
                        Text(
                          'SIZES',
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          widget.plant.size,
                          style: TextStyle(color: Colors.white, fontSize: 27.0),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        RawMaterialButton(
                          elevation: 7.0,
                          padding: EdgeInsets.all(22.0),
                          shape: CircleBorder(),
                          fillColor: Colors.black,
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          onPressed: () => print('Add to cart'),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 15.0,
                    bottom: 30.0,
                    child: Hero(
                      tag: widget.plant.imageUrl,
                      child: Image(
                        height: 280.0,
                        width: 280.0,
                        image: AssetImage(
                          widget.plant.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),

              // This is second part of details page
              Container(
                height: 400.0,
                transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 40.0, right: 35.0, top: 60.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'All to know...',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 22.0,
                          ),
                          Text(
                            widget.plant.description,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 40.0, right: 30.0, top: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Plant height: ${widget.plant.height} ',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Nursety pot width: ${widget.plant.width}',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
