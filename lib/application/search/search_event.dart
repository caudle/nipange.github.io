part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.changed(String value) = _Changed;
  const factory SearchEvent.search() = _Search;
}
