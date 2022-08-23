import 'package:e_book/detail/widgets/book_cover.dart';
import 'package:e_book/detail/widgets/book_detail.dart';
import 'package:e_book/detail/widgets/book_review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_book/book.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage(this.book,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookDetail(book),
            BookCover(book),
            BookReview(book),

          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar([BuildContext? context]){
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.9),
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context!).pop(),
        icon: const Icon(Icons.arrow_back_ios_outlined,
        color: Colors.black87,),
      ),
      actions: [
        IconButton(onPressed: (){},
            icon: IconButton(
              icon: const Icon(
                Icons.more_horiz_outlined,
                color: Colors.black87,
              ) , onPressed: () {},
            ))
      ],
    );
  }
}
