part of 'saved_bloc.dart';

@freezed
class SavedState with _$SavedState {
  const factory SavedState({
    required IOWebSocketChannel savedChannel,
    required User? user,
  }) = _SavedState;
  factory SavedState.initial() => SavedState(
      savedChannel:
          IOWebSocketChannel.connect('ws://172.20.10.11:5000/api/user/saved'),
      user: null);
}
