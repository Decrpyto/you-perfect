import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:loader_overlay/loader_overlay.dart';
import 'package:rive/rive.dart' as rive;

import 'package:youperfect/src/core/themes.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late rive.RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = rive.OneShotAnimation("active", autoplay: false);
    super.initState();
  }

  @override
  void dispose() {
    _btnAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LoaderOverlay(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              width: size.width * 1.7,
              bottom: 200,
              left: 100,
              child: Image.asset(
                "assets/animations/spline.png",
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: const SizedBox(),
              ),
            ),
            const rive.RiveAnimation.asset(
              'assets/animations/shapes.riv',
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: const SizedBox(),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: size.width - 80,
                      child: Text(
                        "Discover, share, and perfect your daily routine today.",
                        style: Themes.font.copyWith(
                            color: Theme.of(context).colorScheme.onSurface, fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: size.width - 120,
                      child: Text(
                        'YouPerfect – a platform where real users share their daily routines, product experiences, and beauty insights. Discover personalized solutions tailored to your unique needs, and join a community committed to helping each other achieve better skin.',
                        style: Themes.font.copyWith(
                            color: Theme.of(context).colorScheme.onSurface, fontSize: 12, letterSpacing: 1.02),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const Spacer(flex: 2),
                    GestureDetector(
                      onTap: () {
                        _btnAnimationController.isActive = true;
                        //context.read<AuthCubit>().loginWithGoogle(context: context);
                      },
                      child: SizedBox(
                        height: 64,
                        width: 260,
                        child: Stack(
                          children: [
                            rive.RiveAnimation.asset(
                              'assets/animations/button.riv',
                              controllers: [_btnAnimationController],
                            ),
                            Positioned.fill(
                              top: 8,
                              left: 60,
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesome5Brands.google,
                                    color: Theme.of(context).colorScheme.primary,
                                    size: 20,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Let's get you on",
                                    style: Themes.font.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      text: TextSpan(
                        text: 'By clicking on the above ',
                        style: Themes.font
                            .copyWith(color: Theme.of(context).colorScheme.onSurface, fontSize: 12, height: 1.5),
                        children: [
                          TextSpan(
                            text: '"Let\'s get you on"',
                            style: Themes.font.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' button, you are agreeing to our ',
                            style: Themes.font.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            //recognizer: TapGestureRecognizer()..onTap = () => privacyPolicyUrlLauncher(),
                            text: 'privacy policy',
                            style: Themes.font.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: Themes.font.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            //recognizer: TapGestureRecognizer()..onTap = () => termsAndServicesUrlLauncher(),
                            text: 'terms and conditions.',
                            style: Themes.font.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                      ),
                      child: Text(
                        'Join YouPerfect today and unlock a world of personalized bodycare insights and beauty tips. Elevate your routine and connect with users who share your beauty goals!',
                        style: Themes.font.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
