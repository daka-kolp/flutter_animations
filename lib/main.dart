import 'package:flutter/material.dart';
import 'package:ram_app/src/app/pages/info_paper.dart';
import 'package:ram_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return /*GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(graphQLClient),
      child: CacheProvider(
        child: ChangeNotifierProvider(
          create: (context) => MainPageChangeNotifier(),
          child:*/
        MaterialApp(
          title: 'Rick&Morty',
          theme: RaMTheme().themeData,
          home: InfoPaperAnimator(),
//            home: MainScreen(),
      /*),
        ),
      ),*/
    );
  }
}
