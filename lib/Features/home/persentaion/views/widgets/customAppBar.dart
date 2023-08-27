import 'package:bookly_app/core/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 20),
      child: Row(
        children: [
          const Text(
            'Bookly',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(routs.kSearchView);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
