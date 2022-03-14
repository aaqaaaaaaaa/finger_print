import 'package:finger_print/page/fingerprint_page.dart';
import 'package:finger_print/page/lock/presentation/pages/funger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'page/lock/presentation/pages/lock_page.dart';


void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Local Auth';

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>ScreenUtilInit(
    designSize: const Size(428, 926),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: () => MaterialApp(
      builder: (context, widget) {
        ScreenUtil.setContext(context);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        );
      },
      debugShowCheckedModeBanner: false,
      home:    const FingerprintPage(),

    ),
  );
}
