import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nipange/application/premium/premium_bloc.dart';
import 'package:nipange/application/price/price_bloc.dart';
import 'package:nipange/presentation/premium/widgets/premium_widget.dart';
import 'package:nipange/widgets/progress_indicator.dart';

import '../../../injector.dart';

class PricePage extends StatelessWidget {
  static const _locale = 'en';
  String _formatNumber(String s) {
    if (s.isNotEmpty)
      return NumberFormat.decimalPattern(_locale).format(double?.parse(s));
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
          appBar: AppBar(),
          body: BlocConsumer<PriceBloc, PriceState>(
            listener: (context, state) {
              if (state.isSuccess) {
                // go to choose premium page

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) =>
                        getIt<PremiumBloc>()..add(PremiumEvent.started()),
                    child: PremiumWidget(
                      listingId: state.listing.id!,
                      hostId: state.listing.hostId!,
                    ),
                  );
                }));
              }

              // errpr
              if (state.failureMessage.isNotEmpty) {
                // show snackbar
                final snackBar = SnackBar(
                  content: Text(
                    state.failureMessage,
                    textAlign: TextAlign.center,
                  ),
                  duration: Duration(seconds: 5),
                  backgroundColor: Theme.of(context).primaryColorLight,
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            builder: (context, state) {
              return ListView(
                children: [
                  // title
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Finish setting up your place',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  //progress indicator
                  if (state.isSubmitting) KCircularProgressIndicator(),

                  // price field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // txfld
                        Expanded(
                          flex: 2,
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: state.priceController,
                              decoration: InputDecoration(
                                suffixText: 'TZS',
                                labelText: 'Price per ${state.perValue}',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 14),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 8,
                                ),
                              ),
                              cursorColor: Theme.of(context).primaryColorDark,
                              onChanged: (price) {
                                context
                                    .read<PriceBloc>()
                                    .add(PriceEvent.priceChanged(price));
                                price =
                                    '${_formatNumber(price.replaceAll(',', ''))}';
                                state.priceController.value = TextEditingValue(
                                  text: price,
                                  selection: TextSelection.collapsed(
                                      offset: price.length),
                                );
                              },
                              validator: (price) {
                                if (price!.isNotEmpty)
                                  return null;
                                else
                                  return "field can\'t be empty";
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        // droppdw
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: state.perValue,
                            items: state.perValues.map((per) {
                              return DropdownMenuItem<String>(
                                value: per,
                                child: new Text(
                                  per,
                                ),
                              );
                            }).toList(),
                            onChanged: (value) => context
                                .read<PriceBloc>()
                                .add(PriceEvent.perChanged(value!)),
                            iconEnabledColor: Theme.of(context).iconTheme.color,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // terms field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: Form(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: state.termsDurationController,
                        decoration: InputDecoration(
                          suffixText: state.perValue,
                          labelText: 'terms ( optional )',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                        ),
                        cursorColor: Theme.of(context).primaryColorDark,
                        onChanged: (terms) {
                          context
                              .read<PriceBloc>()
                              .add(PriceEvent.termsChanged(terms));
                        },
                      ),
                    ),
                  ),

                  // fee field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 20, right: 18, bottom: 10),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: state.feeController,
                        decoration: InputDecoration(
                          suffixText: 'TZS',
                          labelText: 'Dalali fee ( optional )',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8,
                          ),
                        ),
                        cursorColor: Theme.of(context).primaryColorDark,
                        onChanged: (fee) {
                          context
                              .read<PriceBloc>()
                              .add(PriceEvent.feeChanged(fee));
                          fee = '${_formatNumber(fee.replaceAll(',', ''))}';
                          state.feeController.value = TextEditingValue(
                            text: fee,
                            selection:
                                TextSelection.collapsed(offset: fee.length),
                          );
                        },
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 50, right: 18, bottom: 10),
                    child: Text('Description',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 17)),
                  ),

                  // desc field
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 8, right: 18, bottom: 10),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        controller: state.descController,
                        decoration: InputDecoration(
                          hintText: "Tell us what's unique about your place",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        cursorColor: Theme.of(context).primaryColorDark,
                        onChanged: (desc) {
                          context
                              .read<PriceBloc>()
                              .add(PriceEvent.descChanged(desc));
                        },
                        validator: (desc) {
                          if (desc!.isNotEmpty)
                            return null;
                          else
                            return "field can\'t be empty";
                        },
                        maxLines: 4,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          floatingActionButton:
              BlocBuilder<PriceBloc, PriceState>(builder: (context, state) {
            return ElevatedButton(
              onPressed: state.descController.value.text.isNotEmpty &&
                      state.priceController.value.text.isNotEmpty &&
                      !state.isSubmitting
                  ? () {
                      if (state.isedited)
                        context.read<PriceBloc>().add(PriceEvent.save());
                      else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BlocProvider(
                            create: (context) => getIt<PremiumBloc>()
                              ..add(PremiumEvent.started()),
                            child: PremiumWidget(
                              listingId: state.listing.id!,
                              hostId: state.listing.hostId!,
                            ),
                          );
                        }));
                      }
                    }
                  : null,
              child: Text('Finish'),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(80, 35)),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColorLight),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                  elevation: MaterialStateProperty.all(0)),
            );
          })),
    );
  }
}

Future<bool> _willPopCallback(BuildContext context) async {
  final bloc = context.read<PriceBloc>();
  if (bloc.state.isedited) {
    // show dialog
    return showAlertDialog(context: context, bloc: bloc)
        .then((result) => result!);
  } else
    return true;
}

Future<bool?> showAlertDialog(
    {required BuildContext context, required PriceBloc bloc}) {
  // set up the button
  Widget cancelButton = TextButton(
    child: Text(
      "Cancel",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
    ),
    onPressed: () {
      Navigator.pop(context, false); // dismiss alert dialog
    },
  );

  Widget discardButton = TextButton(
    child: Text(
      "Discard",
      style: TextStyle(color: Theme.of(context).primaryColorDark),
    ),
    onPressed: () {
      Navigator.pop(context, true); // dismiss alert dialog
    },
  );

  Widget saveButton = TextButton(
    child: Text("Save", style: TextStyle(color: Colors.white)),
    onPressed: () {
      Navigator.pop(context, false); // dismiss alert dialog
      // save event
      bloc..add(PriceEvent.save());
    },
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      backgroundColor:
          MaterialStateProperty.all(Theme.of(context).primaryColorDark),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Save"),
    content: Text(
      "you have unsaved changes",
      textAlign: TextAlign.left,
    ),
    actions: [
      cancelButton,
      discardButton,
      saveButton,
    ],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );

  // show the dialog
  return showDialog<bool>(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
