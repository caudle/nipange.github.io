import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/utils/api_conn.dart';

import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';

@injectable
class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final IUserRepo iUserRepo;
  ItemBloc(this.iUserRepo) : super(ItemState.initial());

  @override
  Stream<ItemState> mapEventToState(
    ItemEvent event,
  ) async* {
    yield* event.map(
      pageChanged: (e) async* {
        yield state.copyWith(currentIndex: e.index);
      },
      deleteListing: (e) async* {
        print('deleting');
        await iUserRepo.deleteFavListing(
            userId: e.userId, listingId: e.listingId);
      },
      addListing: (e) async* {
        print('adding');
        await iUserRepo.addFavListing(userId: e.userId, listingId: e.listingId);
      },
    );
  }

  void dispose() {
    state.existsChannel.sink.close();
    state.reviewChannel.sink.close();
  }
}
