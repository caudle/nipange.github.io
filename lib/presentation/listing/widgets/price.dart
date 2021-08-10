import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/price/price_bloc.dart';
import 'package:nipange/core/theme.dart';

class PricePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<PriceBloc, PriceState>(
          listener: (context, state) {
            if (state.isSuccess) {
              // go to /host
              Navigator.of(context, rootNavigator: true)
                  .pushReplacementNamed('host');
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                //close icon
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.black38,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                // title
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Finish setting up your place',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),

                // terms field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: state.termsController,
                      decoration: InputDecoration(
                        labelText: 'terms',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (terms) => context
                          .read<PriceBloc>()
                          .add(PriceEvent.termsChanged(terms)),
                      validator: (terms) {
                        if (terms!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                // fee field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: state.feeController,
                      decoration: InputDecoration(
                        labelText: 'Dalali fee',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (fee) => context
                          .read<PriceBloc>()
                          .add(PriceEvent.feeChanged(fee)),
                      validator: (fee) {
                        if (fee!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                // pricefield
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: state.priceController,
                      decoration: InputDecoration(
                        labelText: 'Price',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (price) => context
                          .read<PriceBloc>()
                          .add(PriceEvent.priceChanged(price)),
                      validator: (price) {
                        if (price!.isNotEmpty)
                          return null;
                        else
                          return "field can\'t be empty";
                      },
                    ),
                  ),
                ),

                // desc field
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 20, right: 10, bottom: 10),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: state.descController,
                      decoration: InputDecoration(
                        labelText: 'description',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                        errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                      onChanged: (desc) => context
                          .read<PriceBloc>()
                          .add(PriceEvent.descChanged(desc)),
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

                //progress indicator
                if (state.isSubmitting)
                  Container(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: LinearProgressIndicator(),
                  ),

                //error
                if (state.failureMessage.isNotEmpty)
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      state.failureMessage,
                      style: TextStyle(color: Colors.red),
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
                    state.termsController.value.text.isNotEmpty &&
                    state.feeController.value.text.isNotEmpty &&
                    state.priceController.value.text.isNotEmpty
                ? () {
                    context.read<PriceBloc>().add(PriceEvent.save());
                  }
                : null,
            child: Text('Finish'),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(100, 45)),
                backgroundColor: MaterialStateProperty.all(Color(0xFFFC5185)),
                elevation: MaterialStateProperty.all(0)),
          );
        }));
  }
}
