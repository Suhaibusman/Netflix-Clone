import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/controller/home_controller/home_controller.dart';
import 'package:netflix_clone/utils/constant/app_constant.dart';
import 'package:netflix_clone/utils/constant/image_constant.dart';
import 'package:netflix_clone/utils/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          SizedBox(width: Get.width * 0.06),
                          ctext(
                              text: "TV Shows",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          SizedBox(width: Get.width * 0.1),
                          ctext(
                              text: "Movies",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          SizedBox(width: Get.width * 0.1),
                          ctext(
                              text: "My List",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ],
                      ))
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.top10icon),
                  extraSmallSpacew,
                  ctext(
                      text: "#2 in Pakistan Today",
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 45,
                    width: 60,
                    child: Column(
                      children: [
                        const Icon(Icons.add, color: Colors.white),
                        ctext(
                            text: "My List",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 110,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.play_arrow, color: Colors.black),
                        ctext(
                            text: "Play",
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 60,
                    child: Column(
                      children: [
                        const Icon(Icons.info_outline, color: Colors.white),
                        ctext(
                            text: "Info",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: ctext(
                  text: "Previews",
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeController.previewImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 50,
                      child: Image.asset(
                        homeController.previewImages[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
