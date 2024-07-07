import 'dart:math';

import 'package:chattapp/core/theme/app_pallet.dart';
import 'package:chattapp/feature/auth/pages/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/assets.dart';
import '../core/utils/sizing.dart';
import 'auth/widgets/auth_gradinat_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animateRotation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 20), vsync: this)..repeat();
    final Animation<double> curve = CurvedAnimation(parent: controller!, curve: Curves.linear);
    animateRotation = Tween<double>(begin: 0, end: pi * 2).animate(curve);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            // top: 50,
            child: AnimatedBuilder(
              animation: controller!,
              builder: (context, value) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.02)
                    ..rotateZ(animateRotation?.value ?? 0)
                    ..rotateY(0.2)
                    ..rotateX(0.01),
                  child: SvgPicture.asset(
                    AppAsset.splash_grid,
                    color: Colors.white.withOpacity(0.3),
                    width: AppSizing.width(context),
                    // height: AppSizing.height(context) * 0.6,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          SafeArea(
            child: Container(
              width: AppSizing.width(context),
              height: AppSizing.height(context),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppSizing.k20(context),
                      TweenAnimationBuilder(
                        tween: Tween<Offset>(begin: Offset(0, -500), end: Offset.zero),
                        curve: Curves.bounceInOut,
                        duration: const Duration(seconds: 3),
                        builder: (context, value, child) {
                          return Transform.translate(
                            offset: value,
                            child: Opacity(
                              opacity: 1 - (value.dy / 500).clamp(0, 1),
                              child: const Chip(label: Text("Yippy chatApp")),
                            ),
                          );
                        },
                      ),
                      AppSizing.k20(context),
                      // AppSizing.k20(context),
                    ],
                  ),
                  Container(
                    // color: AppColors.pink,
                    alignment: Alignment.center,
                    height: AppSizing.height(context) * 0.5,
                    child: Transform.scale(scale: 0.9, child: Image.asset(AppAsset.bot, fit: BoxFit.cover)),
                  ),
                  TweenAnimationBuilder(
                      tween: Tween<Offset>(begin: Offset(0, 500), end: Offset.zero),
                      curve: Curves.elasticOut,
                      duration: const Duration(seconds: 5),
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: value,
                          child: Opacity(
                            opacity: 1 - (value.dy / 500).clamp(0, 1),
                            child: Column(
                              children: [
                                Text(
                                  "lets explor What you can do!",
                                  style: Theme.of(context).textTheme.headlineMedium,
                                  textAlign: TextAlign.center,
                                ),
                                AppSizing.k30(context),
                                AuthGridentButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: ((context, animation, secondaryAnimation) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: const LoginPage(),
                                          );
                                        }),
                                      ),
                                    );
                                  },

                                  ButtonText: 'Get Started',
                                ),
                                AppSizing.k30(context),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
