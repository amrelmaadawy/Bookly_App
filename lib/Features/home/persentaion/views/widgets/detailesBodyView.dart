import 'package:bookly_app/Features/home/persentaion/views/widgets/BookRating.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/BooksAction.dart';
import 'package:bookly_app/Features/home/persentaion/views/widgets/similarDetialesListView.dart';
import 'package:flutter/material.dart';

import 'customBookDetailesViewAppBar.dart';
import 'customBookItemListView.dart';

class detailesVeiwBody extends StatelessWidget {
  const detailesVeiwBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    Color subTitleColor = (Colors.grey.shade400);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const customBookDetailesViewAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const customItemListView(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7x42tmAKex3xSGmmajDgLr1KfDMwP3fNwRsuoQ-yn&s',
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            'Rudyard kipling',
            style: TextStyle(fontSize: 17, color: subTitleColor),
          ),
          const SizedBox(
            height: 7,
          ),
         BookRating(
            rating: 4.4,
count: 455,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BooksAction(),
          const SizedBox(
            height: 30,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          const similarDetailesListView()
        ],
      ),
    );
  }
}
