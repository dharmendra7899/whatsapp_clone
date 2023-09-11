import 'package:flutter/material.dart';
import 'package:kkkk/screen/productScreen.dart';
import 'package:kkkk/screen/whatsAppClone.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductScreen()));
                },
                child: const Text(
                  "Get Products",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff128C7E),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WhatsAppClone()));
                },
                child: const Text(
                  "My Whatsapp",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ));
  }
}
