part of 'price_bloc.dart';

@freezed
class PriceState with _$PriceState {
  const factory PriceState({
    required TextEditingController descController,
    required String desc,
    required TextEditingController termsController,
    required String terms,
    required TextEditingController feeController,
    required String fee,
    required TextEditingController priceController,
    required String price,
    double? complete,
    required bool isSubmitting,
    required bool isSuccess,
    required String failureMessage,
    required Listing listing,
  }) = _PriceState;

  factory PriceState.initial() => PriceState(
        descController: TextEditingController(),
        desc: '',
        termsController: TextEditingController(),
        terms: '',
        feeController: TextEditingController(),
        fee: '',
        priceController: TextEditingController(),
        price: '',
        isSubmitting: false,
        isSuccess: false,
        failureMessage: '',
        listing: Listing(),
      );
}
