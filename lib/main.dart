import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cupboard/app_bloc_observer.dart';
import 'package:my_cupboard/data/injector.dart';
import 'package:my_cupboard/l10n/gen_l10n/app_localizations.dart';
import 'package:my_cupboard/ui/app_theme.dart';
import 'package:my_cupboard/ui/screens/information/information_screen.dart';

void main() {
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const MyCupBoard());
}

class MyCupBoard extends StatelessWidget {
  const MyCupBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: () => MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.commonTheme,
        title: 'My CupBoard',
        home: const InformationScreen(),
      ),
    );
  }
}
