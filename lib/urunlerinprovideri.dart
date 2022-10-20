import 'package:flutter/cupertino.dart';

class UrunlerinProvideri extends ChangeNotifier{
  List sepetim=[];
  List? urunlerim=[
  {
      "image":
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F1.bp.blogspot.com%2F-sUih_YSpnog%2FVI3J8qbMjmI%2FAAAAAAAAJEA%2F30OcPUhiAdw%2Fs1600%2FLGTribute2.jpg",
      "title": "Telefon 1",
      "description": "açıklama yazısı",
      "price": 117
    },
    {
      "image":
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.techgadgets.in%2Fimages%2Flg-ku580-phone.jpg",
      "title": "Telefon 2",
      "description": "açıklama yazısı",
      "price": 25
    },
    {
      "image":
          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.geeknaut.com%2Fimages%2F2011%2F09%2FVerizon-LG-Octane.jpg",
      "title": "Telefon 3",
      "description": "açıklama yazısı",
      "price": 12
    }
 ];


 sepeteEkle(int index){
  sepetim.add(urunlerim![index]);
  notifyListeners();
 }
 sepettenCikar(int index){
  
  sepetim!.removeAt(index);
  notifyListeners();
  
 }
}