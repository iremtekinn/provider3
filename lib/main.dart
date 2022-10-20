import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider3/urunler.dart';
import 'package:provider3/urunlerinprovideri.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(
          providers: [ChangeNotifierProvider<UrunlerinProvideri>(create: (context) => UrunlerinProvideri())],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:Urunler(),
          ),
        );
      },
    );
  }
}


 
