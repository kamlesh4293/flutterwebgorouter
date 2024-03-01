import 'package:flutter/material.dart';
import 'package:flutterwebgorouter/screens/firstScreenView.dart';
import 'package:flutterwebgorouter/screens/secondScreenView.dart';
import 'package:flutterwebgorouter/screens/thirdScreenView.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MyHomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'first',
          builder: (BuildContext context, GoRouterState state) {
            return FirstScreenView();
          },
        ),
        GoRoute(
          path: 'second',
          builder: (BuildContext context, GoRouterState state) {
            return SecondScreenView();
          },
        ),
        GoRoute(
          path: 'third',
          builder: (BuildContext context, GoRouterState state) {
            return ThirdScreenView();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      )
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Go Flutter'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.black12,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      context.go('/first');
                    },
                    child: Container(
                      child: Text('First Screen'),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      context.go('/second');
                    },
                    child: Container(
                      child: Text('Second Screen'),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      context.go('/third');
                    },
                    child: Container(
                      child: Text('Third Screen'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(child: Center(child: Text('Dashboard'),),))
          ],
        ),
      ),
    );
  }

}
