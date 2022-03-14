import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/utils/app_constants.dart';
import '../widgets/num_pad.dart';

class Finger extends StatefulWidget {
  const Finger({Key? key}) : super(key: key);

  @override
  _FingerState createState() => _FingerState();
}

class _FingerState extends State<Finger> {
  final TextEditingController _pinPutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: numPad(_pinPutController,context),
    );
  }
}
