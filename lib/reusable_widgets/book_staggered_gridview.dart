import 'package:e_book/utils/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:e_book/utils/color_utils.dart';
import 'package:e_book/book.dart';


class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;
   BookStaggeredGridView(
  this.selected,
  this.pageController,
  this.callback ,
  {Key? key}) : super(key: key);
  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal:20 ),
          child: PageView(
            controller: pageController ,
            onPageChanged: (index) => callback(index),
            children: [
              GridView.builder(
                itemCount: bookList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder:  (_,index) => BookItem(bookList[index.toInt()]),

              shrinkWrap: true,
              physics: const ScrollPhysics(),
              ),
           GridView.count(
               crossAxisCount: 4,
           mainAxisSpacing: 16,
           crossAxisSpacing: 16,
           ),
          // StaggeredGridView.countBuilder(
           // shrinkWrap: true,
           // physics: const ScrollPhysics(),
            //crossAxisSpacing: 16,

            //mainAxisSpacing: 16,
           // crossAxisCount: 4,
           // itemCount: bookList.length,
           // itemBuilder : (_,index) => BookItem(bookList[index]),
           // staggeredTileBuilder : (_) => StaggeredTile.fit(2)),
          Container()
           ,],


             )

          ),


    )
      );
  }
}
