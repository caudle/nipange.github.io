part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required User? hostUser,
    required TextEditingController reviewController,
    required IOWebSocketChannel reviewListChannel,
    required IOWebSocketChannel reviewChannel,
    required IOWebSocketChannel existsChannel,
    required Future<List<Listing>>? moreListings,
    required TextEditingController commentController,
    required User? currentUser,
    required bool isLoading,
    required bool isError,
    required bool issuccess,
  }) = _DetailState;
  factory DetailState.initial() => DetailState(
        hostUser: null,
        reviewController: TextEditingController(),
        reviewListChannel: IOWebSocketChannel.connect('$ws/api/review'),
        reviewChannel: IOWebSocketChannel.connect('$ws/api/review'),
        existsChannel: IOWebSocketChannel.connect('$ws/api/user/saved/exists'),
        moreListings: null,
        currentUser: null,
        commentController: TextEditingController(),
        isLoading: true,
        isError: false,
        issuccess: false,
      );
}
