import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constant/image_constant.dart';
import 'package:netflix_clone/utils/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image.asset(
                  ImageConstants.homeMovie,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                    top: 50,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(ImageConstants.netflixIcon),
                        const SizedBox(width: 16),
                        ctext(text: "TV Shows", color: Colors.white),
                        const SizedBox(width: 16),
                        ctext(text: "Movies", color: Colors.white),
                        const SizedBox(width: 16),
                        ctext(text: "My List", color: Colors.white),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
