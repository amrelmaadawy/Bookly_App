import 'package:bookly_app/Features/home/persentaion/views/widgets/detailesBodyView.dart';
import 'package:flutter/material.dart';

class detailesView extends StatelessWidget {
  const detailesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: detailesVeiwBody(),
      ),
    );
  }
}
