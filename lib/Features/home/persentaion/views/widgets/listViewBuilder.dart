import 'package:bookly_app/Features/home/persentaion/manager/featuredBooksCubit/featuredBooksCubit.dart';
import 'package:bookly_app/Features/home/persentaion/manager/featuredBooksCubit/featuredBooksState.dart';
import 'package:bookly_app/core/utils/customErrorWidget.dart';
import 'package:bookly_app/core/widgets/customLoadingIndecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customBookItemListView.dart';

class featureListViewBuilder extends StatelessWidget {
  const featureListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: ListView.builder(
              itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 8),
                      child: customItemListView(
                          imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,),
                    ))),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMassage: state.error);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
