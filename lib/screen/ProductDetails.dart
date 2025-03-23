import 'package:flutter/material.dart';
import 'package:assignment2/models/ProductDataModel.dart';

class Productdetails extends StatefulWidget {
  final Productdatamodel products;
  const Productdetails({
    super.key,
    required this.products,
  });

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product details",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(widget.products.imageUri,height: 400,),
          Padding(padding: EdgeInsets.all(16.0)),
          Text(
            widget.products.title,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0)),
          Text(

            widget.products.desc,
            style: TextStyle(
                fontSize: 20
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0)),
          Text(
            "${widget.products.price}\$",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red
            ),
          ),
        ],
      ),
    );
  }
}
