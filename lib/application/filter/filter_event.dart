part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.started() = _Started;
  const factory FilterEvent.clearAll() = _ClearAll;
  const factory FilterEvent.typeChanged(String type) = _TypeChanged;
  const factory FilterEvent.priceChanged(List<String> prices) = _PriceChanged;
  const factory FilterEvent.sizeChanged(List<String> sizes) = _SizeChanged;
  const factory FilterEvent.bathChanged(String bath) = _BathChanged;
  const factory FilterEvent.bedChanged(String bed) = _BedChanged;
  const factory FilterEvent.termsChanged(String terms) = _TermsChanged;
  const factory FilterEvent.amenitiesChanged(List<String> amenitys) =
      _AmenitiesChanged;
  const factory FilterEvent.send() = _Send;
}
