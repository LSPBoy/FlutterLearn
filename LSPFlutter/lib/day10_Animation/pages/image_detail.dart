
import 'package:flutter/material.dart';

class LSPImageDetailPage extends StatelessWidget {
  
  final String imageURL;
  
  const LSPImageDetailPage({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Hero(tag: imageURL, child: Image.network(imageURL),),
        ),
      ),
    );
  }
}
