import 'package:bookly_app/Features/home/persentaion/views/widgets/bestSellerListViewItem.dart';
import 'package:flutter/material.dart';

class searchResultView extends StatelessWidget {
  const searchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        // watch out !!! error in scroll
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text('data'),
              // child: BestSellerListViewItem(bookModle:,),
            )),
        itemCount: 15);
  }
}
