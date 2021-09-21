import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/stats/stats_bloc.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/stats/widgets/stats_item.dart';
import 'package:nipange/widgets/error.dart';

class StatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats'),
      ),
      body: BlocBuilder<StatsBloc, StatsState>(builder: (context, state) {
        return CustomScrollView(
          slivers: [
            //items
            SliverFillRemaining(
              child: FutureBuilder<List<Listing>>(
                  future: state.listings,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      //filter only the completed ones
                      final listings = snapshot.data!
                          .where((listing) => listing.complete == 6.0)
                          .toList();
                      return listings.length > 0
                          ? Padding(
                              padding: const EdgeInsets.only(top: 38.0),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return StatsItem(
                                    key: UniqueKey(),
                                    listing: listings[index],
                                  );
                                },
                                itemCount: listings.length,
                              ),
                            )
                          : Center(
                              child: Text(
                                  'Add premium listings to see their performance here'));
                    } else if (snapshot.hasError)
                      return CustomErrorWidget(
                          error: snapshot.error.toString());
                    else
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ListView(
                          children: _buildShadow(),
                        ),
                      );
                  }),
            ),
          ],
        );
      }),
    );
  }
}

List<Widget> _buildShadow() {
  return List.generate(
    3,
    (index) => Container(
      margin: const EdgeInsets.symmetric(vertical: 18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // name
          Flexible(
            child: Container(
              margin: EdgeInsets.all(8),
              color: Colors.grey[200],
              width: 70,
              height: 20,
            ),
          ),

          // card
          Flexible(
            child: Container(
              margin: EdgeInsets.all(8),
              color: Colors.grey[200],
              width: double.infinity,
              height: 200,
            ),
          ),
        ],
      ),
    ),
  );
}
