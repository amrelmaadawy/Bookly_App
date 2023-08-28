import 'package:flutter/cupertino.dart';

import 'bestSellerListViewItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItem(),
            )),
        itemCount: 15);
  }
}
