import 'package:flutter/cupertino.dart';

import 'customBookItemListView.dart';

class featureListViewBuilder extends StatelessWidget {
  const featureListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: customItemListView(),
              ))),
    );
  }
}
