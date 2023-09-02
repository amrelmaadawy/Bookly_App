import 'package:flutter/material.dart';

import '../../../../../core/widgets/customButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: customButton(
          text: 'Free',
          TextColor: Colors.black,
          backGroundColor: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
        )),
        Expanded(
            child: customButton(
          text: 'Preview',
          TextColor: Colors.white,
          backGroundColor: Colors.deepOrange,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        ))
      ],
    );
  }
}
