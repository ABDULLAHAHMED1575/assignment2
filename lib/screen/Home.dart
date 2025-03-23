import 'package:flutter/material.dart';
import 'package:assignment2/models/ProductDataModel.dart';
import 'package:assignment2/widgets/ProductTiles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Productdatamodel> product = [
    Productdatamodel(id: "1",
        title: "Laptop",
        desc: "This is a high-performance laptop designed for work, study, and entertainment. It features a powerful processor, ample storage, and a high-resolution display for seamless multitasking. With a sleek and lightweight design, it is perfect for professionals and students on the go. The long battery life ensures uninterrupted usage, while advanced cooling technology keeps the device running smoothly.",
        price: 100.0,
        imageUri: "assets/images/laptop.jpg"),
    Productdatamodel(
        id: "2",
        title: "Macbook",
        desc: "The MacBook is a premium laptop known for its sleek design, powerful performance, and seamless user experience. Featuring Apple's M-series chip, a stunning Retina display, and a long-lasting battery, it is perfect for professionals, students, and creatives. The macOS ecosystem enhances productivity, while the lightweight build makes it highly portable. With an advanced keyboard, immersive sound, and exceptional build quality, the MacBook delivers a top-tier computing experience.",
        price: 1000.0,
        imageUri: "assets/images/macbook.jpg"),
    Productdatamodel(
        id: "3",
        title: "Microphone",
        desc: " A high-quality microphone designed for crystal-clear audio recording and communication. Whether you're streaming, podcasting, recording music, or attending virtual meetings, this microphone ensures exceptional sound clarity with noise reduction features. With a sleek and durable design, it offers plug-and-play functionality for easy setup on PCs, laptops, and mobile devices. Ideal for professionals and content creators, it delivers studio-grade performance for all your audio needs.",
        price: 200.0,
        imageUri: "assets/images/mic.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Lists",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context,index){
          return Producttiles(products: product[index]);
        },
      ),
    );
  }
}
