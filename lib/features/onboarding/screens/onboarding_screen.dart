import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../data/onboarding_data.dart';
import '../widgets/background_image.dart';
import '../widgets/background_shape.dart';
import '../widgets/custum_indicator.dart';
import '../widgets/getstarted_button.dart';
import '../widgets/onboarding_description.dart';
import '../widgets/onboarding_title.dart';
import '../widgets/primary_button.dart';
import '../widgets/skip_button.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});
  static const String routeName = "OnboardingScreen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController controller = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Column(

          children: [

            Expanded(

              child: PageView.builder(

                controller: controller,

                itemCount: onboardingData.length,

                onPageChanged: (index){

                  setState(() {

                    currentPage = index;

                  });
                },

                itemBuilder: (context,index){

                  final item = onboardingData[index];

                  return Column(

                    children: [

                      const SizedBox(height: 20),

                      OnboardingImage(image: item.image),

                      const SizedBox(height: 50),

                      OnboardingTitle(title: item.title),

                      const SizedBox(height: 20),

                      OnboardingDescription(text: item.description),
                    ],
                  );
                },
              ),
            ),

            CustomPageIndicator(

              controller: controller,

              count: onboardingData.length,
            ),

            const SizedBox(height: 30),

            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 24),

              child: PrimaryButton(

                title: currentPage == onboardingData.length - 1
                    ? "Get Started"
                    : "Next",

                onPressed: () {

                  if (currentPage == onboardingData.length - 1) {

                    // Navigate Home

                  } else {

                    controller.nextPage(

                      duration: const Duration(milliseconds: 400),

                      curve: Curves.ease,
                    );
                  }
                },
              ),
            ),

            TextButton(

              onPressed: () {},

              child: const Text("Skip"),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}