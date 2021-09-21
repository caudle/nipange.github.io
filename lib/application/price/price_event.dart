part of 'price_bloc.dart';

@freezed
class PriceEvent with _$PriceEvent {
  const factory PriceEvent.add(Listing listing) = _Add;
  const factory PriceEvent.descChanged(String desc) = _DescChanged;
  const factory PriceEvent.termsChanged(String terms) = _TermsChanged;
  const factory PriceEvent.feeChanged(String fee) = _FeeChanged;
  const factory PriceEvent.priceChanged(String price) = _PriceChanged;
  const factory PriceEvent.perChanged(String value) = _PerChanged;
  const factory PriceEvent.save() = Save;
}
