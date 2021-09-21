import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/premium/premium_bloc.dart';
import 'package:nipange/core/theme.dart';

import 'package:nipange/domain/package/package.dart';

import 'package:nipange/presentation/premium/widgets/choose_plan.dart';

import 'package:nipange/utils/extensions.dart';

class PremiumWidget extends StatelessWidget {
  final String hostId;
  final String listingId;
  PremiumWidget({Key? key, required this.hostId, required this.listingId})
      : super(key: key);
  static List<Color> packageColors = [
    AppColor.kprimaryLightColor,
    AppColor.kPrimaryColor,
    AppColor.kprimaryDarkColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            elevation: 0.0,
          ),

          // txt
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.only(left: 12, top: 50, right: 12, bottom: 20),
            child: Text('Stand a chance to win more customers with premium',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          )),

          // features
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 30, top: 8),
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // free
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          'Free',
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text('Always at the bottom',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 17)),
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 150,
                    margin: EdgeInsets.only(left: 18),
                    padding: EdgeInsets.only(top: 8),
                  ),

                  // premium
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Premium',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Text('Be at the top of the competition',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 17)),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 150,
                    padding: EdgeInsets.only(top: 8),
                  ),

                  // free
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          'Free',
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          flex: 2,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text('No stats',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 17))),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 150,
                    margin: EdgeInsets.only(left: 18),
                    padding: EdgeInsets.only(top: 8),
                  ),
                  // premium

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          'Premium',
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                  'Get stats of how your business is doing',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(fontSize: 17)),
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 150,
                    margin: EdgeInsets.only(right: 18),
                    padding: EdgeInsets.only(top: 8),
                  ),
                ],
              ),
            ),
          ),
          // choose plan
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Choose plan',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // packages
          SliverToBoxAdapter(
            child: BlocBuilder<PremiumBloc, PremiumState>(
                builder: (context, state) {
              return FutureBuilder<List<Package>>(
                  future: state.futurePackages,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Package> packages = snapshot.data as List<Package>;
                      int index = 0;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: packages.map((package) {
                          index++;
                          return GestureDetector(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              width: double.infinity,
                              height: 120,
                              child: Column(
                                children: [
                                  // Spacer(),
                                  // pkg name
                                  Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 8),
                                      child: Text(package.name.capitalize(),
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 17,
                                                  color: Colors.white)),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                        package.description.capitalize(),
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .copyWith(
                                                fontSize: 17,
                                                color: Colors.white)),
                                  ),
                                  //Spacer(),

                                  // plan
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Choose plan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: packageColors[index - 1],
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onTap: () {
                              if (package.name == 'free')
                                Navigator.of(context, rootNavigator: true)
                                    .pushNamedAndRemoveUntil(
                                        'host', (route) => false);
                              else
                                Navigator.of(context, rootNavigator: true)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return ChoosePlanPage(
                                    package: package,
                                    hostId: hostId,
                                    listingId: listingId,
                                  );
                                }));
                            },
                          );
                        }).toList(),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        alignment: Alignment.center,
                        child: Text(snapshot.error.toString()),
                      );
                    } else
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            color: Colors.grey[200],
                            height: 120,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            color: Colors.grey[200],
                            height: 120,
                          ),
                        ],
                      );
                  });
            }),
          ),
        ],
      ),
    );
  }
}
