import 'package:flutter/material.dart';
import 'package:project1/models/item_model.dart';
import 'package:project1/widgets/house_card.dart';
class SuggestionList extends StatefulWidget{

   SuggestionList(this.title,this.items,{Key? key}) : super(key: key);
   String? title;
   List<Item> items;
  @override
  State<SuggestionList> createState()=> _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList>{
  @override
    Widget build(BuildContext context){
    return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                TextButton(onPressed: (){}, child: Text("See All"))
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              height: 340.0,
              width: double.infinity,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:widget.items.length,itemBuilder: (context,index)=>ItemCard(widget.items[index],(){}),
              ),
            )
          ],
        ),

    );
  }
  }