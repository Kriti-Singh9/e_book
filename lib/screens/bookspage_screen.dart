import 'package:e_book/reusable_widgets/custom_tab.dart';
import 'package:e_book/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:e_book/utils/color_utils.dart';
import 'package:e_book/book.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../reusable_widgets/book_staggered_gridview.dart';

class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed out   ");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            });
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: Center(
          child: const Text(
            "Hola Reader!!!",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
            color: Colors.black87,
            highlightColor: Colors.grey,
          )
        ],
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         
          CustomTab(tabIndex, (int index) {
            setState(() {
              tabIndex = index;
            });
            pageController.jumpToPage(index);
          }),
          Expanded(
            child: BookStaggeredGridView(
              tabIndex,
              pageController,
              (int index) => setState(() {
                tabIndex = index;
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildbottomNavigationBar(),
      //  ),],)
    );
  }

  Widget _buildbottomNavigationBar() {
    final  bottoms = [
      Icons.home_outlined,
     // Icons.analytics_outlined,
     // Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];
    final width =  MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 56,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_,index) => GestureDetector(
            onTap: () => setState((){
              bottomIndex = index;
    }),
            child: Container(
              width: (width-40)/3,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration:bottomIndex == index ?
              const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: Colors.deepOrange,
                  )
                )
              )
                  : null,
              child: Icon(bottoms[index],
              size: 30,
                color: bottomIndex == index ? Colors.grey[800]   : Colors.grey[400]  ,),

            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(width: 10,),
          itemCount: bottoms.length),
    );

  }
}


