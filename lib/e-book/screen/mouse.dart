import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';
import 'package:flutter_course/e-book/componant.dart';
import 'package:lottie/lottie.dart';

class MouseScreen extends StatefulWidget {
  const MouseScreen({super.key});

  @override
  State<MouseScreen> createState() => _MouseScreenState();
}

class _MouseScreenState extends State<MouseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.primary,
            )),
        elevation: 0.0,
        backgroundColor: AppColors.background,
        title: Text(
          "Mouse",
          style:
              TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.network(
                    "https://img.freepik.com/free-photo/red-computer-mouse_1260-13.jpg?size=626&ext=jpg&uid=R65010531&ga=GA1.1.1925568693.1646082132&semt=sph"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextArt(text: "Level 1:", textColor: AppColors.textColor),
              const SizedBox(
                height: 10,
              ),
              TextArt(
                  text:
                      "A computer mouse is a handheld pointing device and input device used with all desktop computers that moves the mouse pointer on the screen. To help with portability, mobile devices, like a laptop, use a touchpad instead of a mouse. Mobile devices, like a smartphone and tablet, use a touch screen for their pointer input. This page is designed to help new computer users become more familiar and efficient with a desktop computer mouse.",
                  textColor: AppColors.textColor),
              SizedBox(
                height: 20,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Lottie.network(
                    "https://assets4.lottiefiles.com/packages/lf20_ypiugaGbSw.json"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
