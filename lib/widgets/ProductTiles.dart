import 'package:flutter/material.dart';
import 'package:assignment2/models/ProductDataModel.dart';
import 'package:assignment2/screen/ProductDetails.dart';

class Producttiles extends StatefulWidget {
  final Productdatamodel products;
  const Producttiles({
    super.key,
    required this.products,
  });

  @override
  State<Producttiles> createState() => _ProducttilesState();
}

class _ProducttilesState extends State<Producttiles> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.products.imageUri, width: 100, height: 150, fit: BoxFit.fitHeight),
      title: Text(
        widget.products.title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        widget.products.desc,
        textAlign: TextAlign.justify,
      ),
      trailing: Text(
        '${widget.products.price}\$',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Productdetails(products: widget.products))
        );
      },
    );
  }
}
