part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    required WebSocketChannel existsChannel,
    required WebSocketChannel reviewChannel,
    required int currentIndex,
    // fav icon tappd
  }) = _ItemState;
  factory ItemState.initial() => ItemState(
        existsChannel: IOWebSocketChannel.connect('$ws/api/user/saved/exists'),
        reviewChannel: IOWebSocketChannel.connect('$ws/api/review'),
        currentIndex: 0,
      );
}
