import 'package:bookly_app/Features/search/persientaion/views/widgets/customSearchField.dart';
import 'package:flutter/material.dart';

class searchVeiwBody extends StatelessWidget {
  const searchVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          customSearchField(),
        ],
      ),
    );
  }
}
