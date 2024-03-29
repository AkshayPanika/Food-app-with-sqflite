import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../reusable_widget/my_stores.dart';
import '../../reusable_widget/text_styles.dart';

class AddToppingWidget extends StatelessWidget {
  const AddToppingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:40,bottom: 10,left: 5),
          child: Text("Add topping",style:headLineText2),
        ),
        SizedBox(
          height: 90, width: 500,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:addProduct.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Card(
                    shape:const OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                    child:Image.network(addProduct[index],fit: BoxFit.fill,)
                  ),
                  const Positioned(
                      right: 0,
                      child: Card(child: Icon(Icons.add),
                      )
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
