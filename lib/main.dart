import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:passprt_app/features/spot_details/views/spot_details_screen.dart';
import 'package:passprt_app/utils/injector/injector.dart';
import 'package:passprt_app/utils/observers/app_bloc_observer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjector();

  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const PassprtApp());
}

class PassprtApp extends StatelessWidget {
  const PassprtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Passprt',
          theme: ThemeData(
            primaryColor: Colors.amber,
            appBarTheme: const AppBarTheme(color: Colors.black),
            textTheme: GoogleFonts.montserratTextTheme(),
          ),
          builder: (context, child) {
            return ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, child!),
              breakpoints: const [
                ResponsiveBreakpoint.resize(350, name: MOBILE),
                ResponsiveBreakpoint.autoScale(600, name: TABLET),
                ResponsiveBreakpoint.resize(
                  800,
                  name: DESKTOP,
                  scaleFactor: 1.4,
                ),
                ResponsiveBreakpoint.autoScale(
                  1700,
                  name: 'XL,',
                  scaleFactor: 1.4,
                ),
              ],
            );
          },
          home: const SpotDetailsScreen(),
        );
      },
    );
  }
}
