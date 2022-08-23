import 'package:flutter/material.dart';
//import 'package:flutter_intl/flutter_intl.dart';
import 'package:intl/intl.dart';
import '../../book.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail(this.book , {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(book.type.toUpperCase(),
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),),
          const SizedBox(height: 10,),
          Text(book.name,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.black87,
            height: 1.2,
          ),),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                  TextSpan(
                    children: [
                     const TextSpan(text: 'Author :',
                      style: TextStyle(
                        color: Colors.grey,
                      ),),
                      TextSpan(text: book.publishers,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ))
                    ]
                  )
              ),
              Text(DateFormat.yMMMd().format(book.date),
              style: const TextStyle(
                color: Colors.grey,
              ),)
               

            ],
          )
        ],
      )
    );
  }
}