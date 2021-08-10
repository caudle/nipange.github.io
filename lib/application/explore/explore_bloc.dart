import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/category/category.dart';
import 'package:nipange/domain/category/i_category_repo.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';

part 'explore_event.dart';
part 'explore_state.dart';
part 'explore_bloc.freezed.dart';

@injectable
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  final ICategoryRepo iCategoryRepo;
  final IListingRepo iListingRepo;
  final IUserRepo iUserRepo;
  final IAuth iAuth;
  ExploreBloc(this.iCategoryRepo, this.iListingRepo, this.iAuth, this.iUserRepo)
      : super(ExploreState.initial());

  @override
  Stream<ExploreState> mapEventToState(
    ExploreEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // fetch cats
        Future<List<Category>> categories = iCategoryRepo.getAll();
        // fetch listings only apts
        Future<List<Listing>> apartments =
            iListingRepo.getAllByType('apartment');
        yield state.copyWith(categories: categories, listings: apartments);
      },
      fetched: (e) async* {
        // fetch listngs
        Future<List<Listing>> listings = iListingRepo.getAllByType(e.type);
        yield state.copyWith(listings: listings, property: e.type);
      },
    );
  }
}
