import 'package:flutter/cupertino.dart';

class customItemListView extends StatelessWidget {
  const customItemListView({Key? key, required this.imageUrl})
      : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
