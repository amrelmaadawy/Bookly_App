import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          width: 5,
        ),
        Text('(2456)', style: TextStyle(fontSize: 14, color: Colors.grey))
      ],
    );
  }
}
