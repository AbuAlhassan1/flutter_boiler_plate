import 'package:app/controllers/auth_provider.dart';
import 'package:app/controllers/theme_provider.dart';
import 'package:app/guard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:app/translations/locale_keys.g.dart';
import 'package:provider/provider.dart';

// Use This Command To Generate Transitions
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

void main() async {

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      path: 'assets/translations',
      startLocale: const Locale('ar', ''),
      fallbackLocale: const Locale('ar', ''),
      child: ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        builder: (context, child) => MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: Guard(
            context: context,
            predicate: (_) => Provider.of<AuthProvider>(_).isLoggedIn,
            onFail: (_) => const PageOne(),
            onPass: (_) => const PageTwo(),
          )
        ),
      ),
      GoRoute(
        path: '/welcome',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const Home()
        ),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) => ScreenUtilInit(
        designSize: const Size(400, 860),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
          theme: Provider.of<ThemeProvider>(context).theme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                context.setLocale(const Locale('ar', ''));
              },
              child: const Text('ar'),
            ),
            TextButton(
              onPressed: (){
                context.setLocale(const Locale('en', ''));
              },
              child: const Text('en'),
            ),
            const Text(
              LocaleKeys.helloWorld
            ).tr(),
            TextButton(
              onPressed: (){
              },
              child: const Text('Light'),
            ),
            TextButton(
              onPressed: (){
              },
              child: const Text('Dark'),
            ),
          ],
        ),
      )
    );
  }
}


class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ThemeProvider>(context, listen: false).setDark();
        Provider.of<AuthProvider>(context, listen: false).login();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Text(Provider.of<AuthProvider>(context, listen: true).isLoggedIn.toString()),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ThemeProvider>(context, listen: false).setLight();
        Provider.of<AuthProvider>(context, listen: false).logout();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Text(Provider.of<AuthProvider>(context, listen: true).isLoggedIn.toString()),
        ),
      ),
    );
  }
}