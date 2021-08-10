import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/report/report_bloc.dart';
import 'package:nipange/utils/extensions.dart';
import 'package:nipange/widgets/error.dart';
import 'package:nipange/widgets/progress_indicator.dart';

class ReportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ReportBloc, ReportState>(
        listener: (context, state) {
          if (state.isSuccess) {
            // show snackbar
            print('creating snackbar');
            final snackBar = SnackBar(
              content: Text(
                'Your report has been submitted',
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 1),
              backgroundColor: Theme.of(context).primaryColorLight,
            );
            print('showing snackbar');
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state.isError) {
            // show snackbar
            print('creating snackbar error');
            final snackBar = SnackBar(
              content: Text(
                'Report failed',
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 1),
              backgroundColor: Theme.of(context).primaryColorLight,
            );
            print('creating snackbar error');
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              title: Text('Report'),
            ),
            body: ListView(
              children: [
                // title
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 18.0, top: 20, bottom: 20),
                  child: Text(
                    'Report this property',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),

                // text
                Container(
                  margin: EdgeInsets.only(left: 18.0, bottom: 40),
                  child: Text(
                      """Your feedback will help us improve our search experience and property listings.""",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1),
                ),

                // email field
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: state.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email address',
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      context
                          .read<ReportBloc>()
                          .add(ReportEvent.emailChanged(value));
                    },
                  ),
                ),

                // flags dropdown
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18, bottom: 20, top: 20),
                  child: FutureBuilder<List<String>?>(
                      future: state.flags,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return DropdownButtonFormField<String>(
                            value: state.flagDropdownValue,
                            items: snapshot.data!
                                .map((flag) => DropdownMenuItem<String>(
                                      child: Text(flag.capitalize()),
                                      value: flag,
                                    ))
                                .toList(),
                            onChanged: (flag) {
                              context
                                  .read<ReportBloc>()
                                  .add(ReportEvent.flagChanged(flag!));
                            },
                            decoration: InputDecoration(
                              labelText: 'What do you want to report?',
                              contentPadding: EdgeInsets.all(8),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(),
                            ),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).primaryColorDark,
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return CustomErrorWidget(
                              error: snapshot.error.toString());
                        }
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          color: Colors.grey[200],
                        );
                      }),
                ),

                // usertype dropdown value
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18, bottom: 20, top: 20),
                  child: DropdownButtonFormField<String>(
                    value: state.userTypeDropdownValue,
                    items: state.userTypes
                        .map((type) => DropdownMenuItem<String>(
                              child: Text(type.capitalize()),
                              value: type,
                            ))
                        .toList(),
                    onChanged: (type) {
                      context
                          .read<ReportBloc>()
                          .add(ReportEvent.userTypeChanged(type!));
                    },
                    decoration: InputDecoration(
                      labelText: 'Who are you?',
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),

                // comments
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 5),
                  child: Text(
                    'Additional Comments',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: state.commentController,
                    decoration: InputDecoration(
                      hintText: 'Enter your comment here',
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    maxLines: 4,
                  ),
                ),

                if (state.isloading) KCircularProgressIndicator(),

                // send bttn
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 10),
                  child: ElevatedButton(
                    onPressed: state.emailController.value.text.isNotEmpty
                        ? () {
                            context.read<ReportBloc>().add(ReportEvent.send());
                          }
                        : null,
                    child: Text('send Report'),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(
                            Size(MediaQuery.of(context).size.width, 45)),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFFFC5185)),
                        elevation: MaterialStateProperty.all(0)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
