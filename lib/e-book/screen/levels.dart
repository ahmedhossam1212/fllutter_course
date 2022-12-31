import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';
import 'package:flutter_course/e-book/componant.dart';
import 'package:flutter_course/e-book/screen/mouse.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.background,
        title: Text(
          "Digital Education",
          style:
              TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                navigateTo(context, const MouseScreen());
              },
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Level 1",
                    style: TextStyle(color: AppColors.background, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Level 2",
                    style: TextStyle(color: AppColors.background, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Level 3",
                    style: TextStyle(color: AppColors.background, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Level 4",
                    style: TextStyle(color: AppColors.background, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Level 5",
                    style: TextStyle(color: AppColors.background, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
