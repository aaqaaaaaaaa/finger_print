import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:local_auth/local_auth.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../api/local_auth_api.dart';
import '../core/utils/app_constants.dart';
import 'home_page.dart';
import 'lock/presentation/widgets/num_pad.dart';

class FingerprintPage extends StatefulWidget {
  const FingerprintPage({Key? key}) : super(key: key);

  @override
  State<FingerprintPage> createState() => _FingerprintPageState();
}

class _FingerprintPageState extends State<FingerprintPage> {
  final TextEditingController _pinPutController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(gradient: cFirstGradient),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // SvgPicture.asset(
                        //   "assets/icons/svgtahlil.svg",
                        //   color: cWhiteColor,
                        //   width: 268.w,
                        //   height: 45.h,
                        // ),
                        SizedBox(
                          height: 26.h,
                        ),
                        // Container(
                        //   margin: EdgeInsets.symmetric(horizontal: 50.w),
                        //   child:
                        //   BlocBuilder<PassBloc, PassState>(
                        //     buildWhen: (_, state) {
                        //       if (state is PassSuccess) {
                        //         Navigator.pushReplacement(
                        //           context,
                        //           CupertinoPageRoute(
                        //               builder: (context) =>
                        //               const HomePage()),
                        //         );
                        //       }
                        //       debugPrint(state.message);
                        //       return state is PassSuccess;
                        //     },
                        //     builder: (context, state) {
                        //       if (state is PassInitial) {
                        //         return Text(
                        //           state.message,
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //               color: cWhiteColor,
                        //               fontSize: 16.sp,
                        //               fontFamily: 'Regular'),
                        //         );
                        //       } else {
                        //         return Text(
                        //           state.message,
                        //           textAlign: TextAlign.center,
                        //           style: TextStyle(
                        //               color: cYellowColor,
                        //               fontSize: 16.sp,
                        //               fontFamily: 'Regular'),
                        //         );
                        //       }
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 114.w,
                          height: 20.h,
                          child: PinCodeTextField(
                            showCursor: false,
                            appContext: context,
                            controller: _pinPutController,
                            length: 4,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            obscuringWidget: Container(
                              height: 14.h,
                              width: 14.w,
                              decoration: BoxDecoration(
                                color: cWhiteColor,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            enableActiveFill: true,
                            enablePinAutofill: true,
                            pinTheme: PinTheme(
                              fieldHeight: 14.h,
                              fieldWidth: 14.w,
                              borderWidth: 0,
                              shape: PinCodeFieldShape.circle,
                              activeColor: cBackColorIcon,
                              inactiveColor: cBackColorIcon,
                              disabledColor: cBackColorIcon,
                              activeFillColor: cBackColorIcon,
                              selectedFillColor: cBackColorIcon,
                              inactiveFillColor: cBackColorIcon,
                              errorBorderColor: cBackColorIcon,
                            ),
                            onCompleted: (value) {
                              // if (value.length == 4) {
                              //   bloc.add(PassCompileEvent(
                              //       passController: _pinPutController));
                              // }
                            },
                            onChanged: (controllerPin) {},
                          ),
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        numPad(_pinPutController, context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
