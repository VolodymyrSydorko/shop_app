import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/screens/welcome/widgets/splash_item.dart';
import 'package:shop_app/styles/colors.dart';
import 'package:shop_app/widgets/buttons/custom_text_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = 'WelcomeRoute';
  static const routePath = '/welcome';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Shop app, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Welcome to Shop app, Let’s shop!",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Welcome to Shop app, Let’s shop!",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height:
                      deviceSize.height - padding.top - deviceSize.height / 5,
                  width: deviceSize.width,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashItem(
                      text: splashData[index]['text']!,
                      image: splashData[index]["image"]!,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceSize.height / 5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      const Spacer(flex: 3),
                      CustomTextButton(
                        'Start',
                        onPressed: () {
                          context.router.replace(const SignInRoute());
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 10),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color:
            currentPage == index ? AppColors.primary : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
