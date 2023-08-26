import 'package:flutter/cupertino.dart';
import 'package:bookly_app/core/utils/assets.dart';

class customItemListView extends StatelessWidget {
  const customItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:const DecorationImage(
              image: AssetImage(assets.testPic), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
