import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider3/urunlerinprovideri.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Sepet extends StatelessWidget {
  const Sepet({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,UrunlerinProvideri tekin, child) {
      return Scaffold(
        body: ListView.builder(
          itemCount: tekin.sepetim.length,
          itemBuilder: (context, index) {
            return Container(
             width:50.w,
             height:20.h,
             color:Colors.red,
             margin: EdgeInsets.all(5.w),
             child: Row(
              children: [
                Image.network(tekin.sepetim[index]["image"]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tekin.sepetim[index]["title"]),
                     Text(tekin.sepetim[index]["description"]),
                     Text(tekin.sepetim[index]["price"].toString()),
                     IconButton(onPressed: () {
                       tekin.sepettenCikar(index);
                     },
                      icon: Icon(Icons.delete))
                  ],
                ),
               
              ],
             ),
            );
          },),
        );
    },
      
    ); 
  }
}