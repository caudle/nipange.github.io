import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/premium/premium_bloc.dart';

import 'package:nipange/domain/package/package.dart';
import 'package:nipange/presentation/premium/widgets/choose_plan.dart';
import 'package:nipange/presentation/premium/widgets/plan_info.dart';

class PremiumPage extends StatelessWidget {
  static int index = 3;
  static String routeName = '/premium';
  const PremiumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Premium'),
            floating: true,
            snap: true,
            elevation: 0.0,
          ),

          // txt
          SliverToBoxAdapter(
              child: Container(
            child: Text('Stand a chance to win more customers with premium'),
          )),

          // features
          SliverToBoxAdapter(
            child: Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // free
                  Container(
                    child: Column(
                      children: [
                        Expanded(child: Text('Free')),
                        Expanded(child: Text('Always at the bottom')),
                      ],
                    ),
                    decoration: BoxDecoration(),
                    width: 100,
                  ),
                  // premium

                  Container(
                    child: Column(
                      children: [
                        Expanded(child: Text('Premium')),
                        Expanded(
                            child: Text('Be at the top of the competition')),
                      ],
                    ),
                    decoration: BoxDecoration(),
                    width: 100,
                  ),

                  // free
                  Container(
                    child: Column(
                      children: [
                        Expanded(child: Text('Free')),
                        Expanded(child: Text('No stats')),
                      ],
                    ),
                    decoration: BoxDecoration(),
                    width: 100,
                  ),
                  // premium

                  Container(
                    child: Column(
                      children: [
                        Expanded(child: Text('Premium')),
                        Expanded(
                            child: Text(
                                'Get stats of how your business is doing')),
                      ],
                    ),
                    decoration: BoxDecoration(),
                    width: 100,
                  ),
                ],
              ),
            ),
          ),

          // packages
          SliverFillRemaining(
            child: BlocBuilder<PremiumBloc, PremiumState>(
                builder: (context, state) {
              return FutureBuilder<List<Package>>(
                  future: state.futurePackages,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Package> packages = snapshot.data as List<Package>;
                      return Column(
                        children: packages
                            .map(
                              (package) => GestureDetector(
                                child: Container(
                                  child: Row(
                                    children: [
                                      // plan
                                      Column(
                                        children: [
                                          Text(package.name),
                                          Text(package.description)
                                        ],
                                      ),
                                      // user plan
                                      if (state.userPackage != null)
                                        Text(state.userPackage!.name ==
                                                package.name
                                            ? 'Current Plan'
                                            : package.name != 'free'
                                                ? 'Choose plan'
                                                : ''),
                                    ],
                                  ),
                                ),
                                onTap: package.name == 'free'
                                    ? null
                                    : () {
                                        state.userPackage == null
                                            ? showAlertDialog(
                                                context: context,
                                                route: routeName)
                                            : state.userPackage!.name ==
                                                    package.name
                                                ? Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                    return PlanInfoPage(
                                                      package:
                                                          state.userPackage!,
                                                    );
                                                  }))
                                                : Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                    return ChoosePlanPage(
                                                      package: package,
                                                    );
                                                  }));
                                      },
                              ),
                            )
                            .toList(),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        alignment: Alignment.center,
                        child: Text(snapshot.error.toString()),
                      );
                    } else
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                  });
            }),
          ),
        ],
      ),
    );
  }

// alert dialog
  showAlertDialog({required BuildContext context, required String route}) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget signUpButton = TextButton(
      child: Text("Sign up"),
      onPressed: () {
        // navgate to signup form
        Navigator.pushNamed(context, '/signup', arguments: route).then((_) {
          context.read<PremiumBloc>().add(PremiumEvent.started());
        });
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("This feature requires you to log in"),
      actions: [
        cancelButton,
        signUpButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
