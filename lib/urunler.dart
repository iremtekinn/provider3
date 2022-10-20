import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider3/sepet.dart';
import 'package:provider3/urunlerinprovideri.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Urunler extends StatelessWidget {
  const Urunler({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, UrunlerinProvideri irem, child) {
        return Scaffold(
          body: ListView.builder(
            itemCount: irem.urunlerim!.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5.w),
                width: 50.w,
                height: 20.h,
                color: Colors.amber,
                child: Row(
                  children: [
                    Image.network(irem.urunlerim![index]["image"]),
                    SizedBox(
                      width: 3.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(irem.urunlerim![index]["title"]),
                        Text(irem.urunlerim![index]["description"]),
                        Text(irem.urunlerim![index]["price"].toString()),
                        
                        IconButton(
                            onPressed: () {
                              irem.sepeteEkle(index);
                            },
                            icon: Icon(Icons.shopping_basket_outlined))
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Sepet(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
