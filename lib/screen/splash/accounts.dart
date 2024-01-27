import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/controller/splash_controller/account_controller.dart';
import 'package:netflix_clone/screen/home/home_screen.dart';
import 'package:netflix_clone/utils/constant/image_constant.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AccountController accountController = AccountController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Image.asset(
                ImageConstants.netflixLogo,
                width: 107,
                height: 28,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: accountController.screenImages.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(const HomeScreen());
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Column(
                          children: [
                            Image.asset(
                              accountController.screenImages[index]["image"],
                              width: 76,
                              height: 92,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              accountController.screenImages[index]["name"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
