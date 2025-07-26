import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/utils/function/custome_lunche_url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bookbutton extends StatelessWidget {
  final BookModel bookModel;

  const bookbutton({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 50,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              color: Colors.white),
          child: const Center(
              child: Text(
            "Free",
            style: TextStyle(color: Colors.black, fontSize: 18),
          )),
        ),
        GestureDetector(
          onTap: ()async{
           customlaunchUrl(context, bookModel.volumeInfo.previewLink);
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                color: Color(0xffEF8262)),
            child:  Center(
                child: Text(
                 gettext(bookModel)
             , style:const TextStyle(color: Colors.white, fontSize: 18),
            )),
          ),
        ),
      ],
    );
  }
}
String gettext(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink==null){
    return 'not avilable';
  }
  else{
    return 'preview';
  }

}
