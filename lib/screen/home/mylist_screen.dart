import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/controller/home_controller/mylist_controller.dart';
import 'package:netflix_clone/utils/constant/image_constant.dart';
import 'package:netflix_clone/utils/widgets/text_widget.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyListController myListController = Get.put(MyListController());
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(ImageConstants.netflixIcon),
                    const SizedBox(
                      width: 10,
                    ),
                    ctext(
                        text: "My List",
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0, // Adjust the vertical spacing
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 3),
                  itemCount: myListController.myList.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 161,
                      width: Get.width / 3 - 10,
                      child: Image.asset(
                        myListController.myList[index],
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
