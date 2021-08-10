import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/stats/stats_bloc.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/stats/widgets/stats_item.dart';

class StatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StatsBloc, StatsState>(builder: (context, state) {
        return FutureBuilder<List<Listing>>(
            future: state.listings,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //filter only the completed ones
                final listings = snapshot.data
                    ?.where((listing) => listing.complete == 6.0)
                    .toList();
                return CustomScrollView(
                  slivers: [
                    // heading
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 50.0),
                      sliver: SliverToBoxAdapter(
                        child: Container(
                          child: Text(
                            'Stats',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),

                    //items
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 38.0),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return StatsItem(
                              listing: listings![index],
                            );
                          },
                          childCount: listings!.length,
                        ),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError)
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  alignment: Alignment.center,
                  child: Text(snapshot.error.toString()),
                );
              else
                return Center(
                  child: CircularProgressIndicator(),
                );
            });
      }),
    );
  }
}
