part of 'price_bloc.dart';

@freezed
class PriceState with _$PriceState {
  const factory PriceState({
    required TextEditingController descController,
    required String desc,
    required TextEditingController termsDurationController,
    required String termsDuration, // 6 months
    required List<String> perValues, // per night or per month
    required String perValue,
    required TextEditingController feeController,
    required String fee,
    required TextEditingController priceController,
    required String price,
    double? complete,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isedited,
    required String failureMessage,
    required Listing listing,
  }) = _PriceState;

  factory PriceState.initial() => PriceState(
        descController: TextEditingController(),
        desc: '',
        termsDurationController: TextEditingController(),
        termsDuration: '',
        perValues: ['month', 'night'],
        perValue: 'month',
        feeController: TextEditingController(),
        fee: '',
        priceController: TextEditingController(),
        price: '',
        isSubmitting: false,
        isSuccess: false,
        isedited: false,
        failureMessage: '',
        listing: Listing(),
      );
}
