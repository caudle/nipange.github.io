import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/detail/detail_bloc.dart';
import 'package:nipange/application/listing_item/item_bloc.dart';

import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/presentation/detail/detail_page.dart';
import 'package:nipange/presentation/explore/widgets/listing_item.dart';
import 'package:nipange/widgets/error.dart';

import '../../../injector.dart';

class FilterResultsPage extends StatelessWidget {
  final Future<List<Listing>> listings;
  const FilterResultsPage({
    Key? key,
    required this.listings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
        elevation: 0,
      ),
      body: FutureBuilder<List<Listing>>(
        future: listings,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty)
              return Center(
                child: Container(
                  child: Text('Oops no listings found, try different filters'),
                ),
              );
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: BlocProvider(
                    create: (context) => getIt<ItemBloc>(),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListingItem(
                          listing: snapshot.data![index],
                          routeName: '/filter/results'),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: RouteSettings(name: '/details'),
                            builder: (context) {
                              return BlocProvider(
                                create: (context) => getIt<DetailBloc>()
                                  ..add(DetailEvent.started(
                                    userId: snapshot.data![index].hostId!,
                                    listingId: snapshot.data![index].id!,
                                    type: snapshot.data![index].propertyType!,
                                    district: snapshot
                                        .data![index].location!['district'],
                                  )),
                                child: BlocProvider(
                                  create: (context) => getIt<ItemBloc>(),
                                  child: DetailsPage(
                                      listing: snapshot.data![index]),
                                ),
                              );
                            }));
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return CustomErrorWidget(error: snapshot.error.toString());
          }
          return _buildListingShadow(context);
        },
      ),
    );
  }
}

Widget _buildListingShadow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
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
        SizedBox(height: 3),
        Flexible(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Colors.grey[200],
          ),
        ),
      ],
    ),
  );
}
