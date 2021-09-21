part of 'saved_bloc.dart';

@freezed
class SavedState with _$SavedState {
  const factory SavedState({
    required IOWebSocketChannel savedChannel,
    required User? user,
  }) = _SavedState;
  factory SavedState.initial() => SavedState(
      savedChannel: IOWebSocketChannel.connect('$ws/api/user/saved'),
      user: null);
}
