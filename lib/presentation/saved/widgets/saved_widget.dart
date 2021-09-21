import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';
import 'package:nipange/application/saved/saved_bloc.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/explore/widgets/listing_item.dart';
import 'package:nipange/widgets/error.dart';

import '../../../injector.dart';

class SavedWidget extends StatelessWidget {
  SavedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved'),
        elevation: 0,
      ),
      body: SafeArea(
        child: BlocBuilder<SavedBloc, SavedState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                // props
                SliverPadding(
                  padding: EdgeInsets.only(left: 18, right: 18, top: 50),
                  sliver: SliverFillRemaining(
                    child: StreamBuilder<dynamic>(
                      stream: savedStream(state),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<Listing> listings = <Listing>[];
                          List bodyList = jsonDecode(snapshot.data);
                          listings.addAll(bodyList.map((listing) =>
                              Listing.fromJson(json.encode(listing))));
                          listings.sort(
                              (a, b) => a.createdAt!.compareTo(b.createdAt!));

                          return listings.length > 0
                              ? ListView.builder(
                                  itemCount: listings.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return BlocProvider(
                                      create: (context) => getIt<ItemBloc>(),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30.0),
                                        child: ListingItem(
                                            listing: listings[index],
                                            routeName: '/'),
                                      ),
                                    );
                                  })
                              : Center(
                                  child: Text(
                                    'You have no saved listings yet. Start by pressing the like icon on your favourite listings.',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                );
                        } else if (snapshot.hasError) {
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        }
                        return _buildListingShadow(context);
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Stream savedStream(SavedState state) {
    state.savedChannel.sink.add(jsonEncode({
      "userId": state.user == null ? "" : state.user!.id,
    }));
    return state.savedChannel.stream;
  }
}

Widget _buildListingShadow(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 150,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 100,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 100,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
      Container(
        width: 150,
        height: 20,
        color: Colors.grey[200],
        margin: const EdgeInsets.only(bottom: 5),
      ),
    ],
  );
}
