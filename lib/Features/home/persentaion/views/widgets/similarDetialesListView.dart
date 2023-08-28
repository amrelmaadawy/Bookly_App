import 'package:bookly_app/Features/home/persentaion/views/widgets/customBookItemListView.dart';
import 'package:flutter/material.dart';

class similarDetailesListView extends StatelessWidget {
  const similarDetailesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: customItemListView(),
              ))),
    );
  }
}
