import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  final String route;
  const SettingsWidget({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: ListView(
        children: [
          // title
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Settings and privacy',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 28),
              ),
            ),
          ),

          // acc
          Container(
            margin: EdgeInsets.only(left: 18, top: 70, right: 18, bottom: 8),
            child: Text(
              'Account',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0, top: 8, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Icon(Icons.perm_identity)),
                Expanded(
                    flex: 4,
                    child: Text(
                      'Account',
                      style: Theme.of(context).textTheme.bodyText2,
                    )),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    child: Text('Sign up'),
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).accentColor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ))),
                  ),
                )
              ],
            ),
          ),
          Divider(),

          // switch
          // acc type
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 12, bottom: 8),
            child: Text(
              'Switch',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 8, bottom: 8),
            child: GestureDetector(
              child: Text(
                route == '/' ? 'Customer' : 'Hosting',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              onTap: () {
                // go to explore pg
                route == '/'
                    ? Navigator.of(context, rootNavigator: true)
                        .pushReplacementNamed('/')
                    : Navigator.of(context, rootNavigator: true)
                        .pushReplacementNamed('host');
              },
            ),
          ),

          Divider(),

          // about
          Container(
            margin: EdgeInsets.only(left: 18, top: 30, right: 18, bottom: 8),
            child: Text(
              'About',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(left: 0, top: 8, right: 18, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: Icon(Icons.security)),
                  Expanded(
                      flex: 9,
                      child: Text(
                        'Terms of service',
                        style: Theme.of(context).textTheme.bodyText2,
                      )),
                  Spacer(flex: 3),
                  Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ))
                ],
              ),
            ),
            onTap: () {
              // terms of sev
            },
          ),
          Divider(),

          // policy
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(left: 0, top: 12, right: 18, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: Icon(Icons.privacy_tip)),
                  Expanded(
                      flex: 9,
                      child: Text(
                        'Privacy policy',
                        style: Theme.of(context).textTheme.bodyText2,
                      )),
                  Spacer(flex: 3),
                  Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ))
                ],
              ),
            ),
            onTap: () {
              // privacy polc
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
