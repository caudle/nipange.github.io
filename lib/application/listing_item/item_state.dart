part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    required WebSocketChannel existsChannel,
    required WebSocketChannel reviewChannel,
    required int currentIndex,
  }) = _ItemState;
  factory ItemState.initial() => ItemState(
        existsChannel: IOWebSocketChannel.connect(
            'ws://172.20.10.11:5000/api/user/saved/exists'),
        reviewChannel:
            IOWebSocketChannel.connect('ws://172.20.10.11:5000/api/review'),
        currentIndex: 0,
      );
}
