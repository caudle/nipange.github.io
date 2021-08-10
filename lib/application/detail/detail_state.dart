part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required User? hostUser,
    required TextEditingController reviewController,
    required IOWebSocketChannel reviewListChannel,
    required IOWebSocketChannel reviewChannel,
    required IOWebSocketChannel existsChannel,
    required User? currentUser,
    required bool isLoading,
    required bool isError,
    required bool issuccess,
  }) = _DetailState;
  factory DetailState.initial() => DetailState(
        hostUser: null,
        reviewController: TextEditingController(),
        reviewListChannel:
            IOWebSocketChannel.connect('ws://172.20.10.11:5000/api/review'),
        reviewChannel:
            IOWebSocketChannel.connect('ws://172.20.10.11:5000/api/review'),
        existsChannel: IOWebSocketChannel.connect(
            'ws://172.20.10.11:5000/api/user/saved/exists'),
        currentUser: null,
        isLoading: true,
        isError: false,
        issuccess: false,
      );
}
