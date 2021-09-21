// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/account_bloc.dart' as _i36;
import 'application/add_review/add_review_bloc.dart' as _i37;
import 'application/amenity/amenity_bloc.dart' as _i38;
import 'application/auth/auth_check/auth_bloc.dart' as _i39;
import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i43;
import 'application/auth/log_in/log_in_bloc.dart' as _i22;
import 'application/auth/login_details/login_details_bloc.dart' as _i23;
import 'application/auth/reset_password/resetpassword_bloc.dart' as _i30;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i33;
import 'application/detail/detail_bloc.dart' as _i40;
import 'application/explore/explore_bloc.dart' as _i41;
import 'application/filter/filter_bloc.dart' as _i42;
import 'application/host_account/host_account_bloc.dart' as _i44;
import 'application/listing/listing_bloc.dart' as _i20;
import 'application/listing_item/item_bloc.dart' as _i19;
import 'application/location/location_bloc.dart' as _i21;
import 'application/person_info/person_bloc.dart' as _i24;
import 'application/photos/photos_bloc.dart' as _i25;
import 'application/premium/premium_bloc.dart' as _i26;
import 'application/price/price_bloc.dart' as _i27;
import 'application/property/property_bloc.dart' as _i28;
import 'application/report/report_bloc.dart' as _i29;
import 'application/saved/saved_bloc.dart' as _i31;
import 'application/search/search_bloc.dart' as _i32;
import 'application/stats/stats_bloc.dart' as _i34;
import 'application/videos/videos_bloc.dart' as _i35;
import 'domain/auth/i_auth.dart' as _i3;
import 'domain/category/i_category_repo.dart' as _i5;
import 'domain/listing/i_listing_repo.dart' as _i7;
import 'domain/location/i_locationRepo.dart' as _i9;
import 'domain/report/i_report_repo.dart' as _i11;
import 'domain/review/i_review_repo.dart' as _i13;
import 'domain/search/i_search_repo.dart' as _i15;
import 'domain/user/i_user_repo.dart' as _i17;
import 'infrastructure/auth/node_api_auth.dart' as _i4;
import 'infrastructure/category/category_repo.dart' as _i6;
import 'infrastructure/listing/listing_repo.dart' as _i8;
import 'infrastructure/location/location_repo.dart' as _i10;
import 'infrastructure/report/report_repo.dart' as _i12;
import 'infrastructure/review/review_repo.dart' as _i14;
import 'infrastructure/search/search_repo.dart' as _i16;
import 'infrastructure/user/user_repo.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuth>(() => _i4.NodeApiAuth());
  gh.lazySingleton<_i5.ICategoryRepo>(() => _i6.CategoryRepo());
  gh.lazySingleton<_i7.IListingRepo>(() => _i8.ListingRepo());
  gh.lazySingleton<_i9.ILocationRepo>(() => _i10.LocationRepo());
  gh.lazySingleton<_i11.IReportRepo>(() => _i12.ReportRepo());
  gh.lazySingleton<_i13.IReviewRepo>(() => _i14.ReviewRepo());
  gh.lazySingleton<_i15.ISearchRepo>(() => _i16.SearchRepo());
  gh.lazySingleton<_i17.IUserRepo>(() => _i18.UserRepo());
  gh.factory<_i19.ItemBloc>(() => _i19.ItemBloc(get<_i17.IUserRepo>()));
  gh.factory<_i20.ListingBloc>(() => _i20.ListingBloc(get<_i7.IListingRepo>()));
  gh.factory<_i21.LocationBloc>(() =>
      _i21.LocationBloc(get<_i7.IListingRepo>(), get<_i9.ILocationRepo>()));
  gh.factory<_i22.LogInBloc>(() => _i22.LogInBloc(get<_i3.IAuth>()));
  gh.factory<_i23.LoginDetailsBloc>(
      () => _i23.LoginDetailsBloc(get<_i3.IAuth>()));
  gh.factory<_i24.PersonBloc>(() => _i24.PersonBloc(get<_i17.IUserRepo>()));
  gh.factory<_i25.PhotosBloc>(() => _i25.PhotosBloc(get<_i7.IListingRepo>()));
  gh.factory<_i26.PremiumBloc>(
      () => _i26.PremiumBloc(get<_i17.IUserRepo>(), get<_i3.IAuth>()));
  gh.factory<_i27.PriceBloc>(() => _i27.PriceBloc(get<_i7.IListingRepo>()));
  gh.factory<_i28.PropertyBloc>(() => _i28.PropertyBloc(
      get<_i7.IListingRepo>(), get<_i3.IAuth>(), get<_i5.ICategoryRepo>()));
  gh.factory<_i29.ReportBloc>(() => _i29.ReportBloc(get<_i11.IReportRepo>()));
  gh.factory<_i30.ResetpasswordBloc>(
      () => _i30.ResetpasswordBloc(get<_i3.IAuth>()));
  gh.factory<_i31.SavedBloc>(() => _i31.SavedBloc(get<_i3.IAuth>()));
  gh.factory<_i32.SearchBloc>(() => _i32.SearchBloc(get<_i15.ISearchRepo>()));
  gh.factory<_i33.SignUpFormBloc>(() => _i33.SignUpFormBloc(get<_i3.IAuth>()));
  gh.factory<_i34.StatsBloc>(() => _i34.StatsBloc(get<_i7.IListingRepo>()));
  gh.factory<_i35.VideosBloc>(() => _i35.VideosBloc(get<_i7.IListingRepo>()));
  gh.factory<_i36.AccountBloc>(
      () => _i36.AccountBloc(get<_i17.IUserRepo>(), get<_i3.IAuth>()));
  gh.factory<_i37.AddReviewBloc>(() => _i37.AddReviewBloc(
      get<_i17.IUserRepo>(), get<_i13.IReviewRepo>(), get<_i3.IAuth>()));
  gh.factory<_i38.AmenityBloc>(() => _i38.AmenityBloc(get<_i7.IListingRepo>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(get<_i3.IAuth>()));
  gh.factory<_i40.DetailBloc>(() => _i40.DetailBloc(get<_i17.IUserRepo>(),
      get<_i13.IReviewRepo>(), get<_i3.IAuth>(), get<_i7.IListingRepo>()));
  gh.factory<_i41.ExploreBloc>(() => _i41.ExploreBloc(get<_i5.ICategoryRepo>(),
      get<_i7.IListingRepo>(), get<_i3.IAuth>(), get<_i17.IUserRepo>()));
  gh.factory<_i42.FilterBloc>(() => _i42.FilterBloc(get<_i15.ISearchRepo>()));
  gh.factory<_i43.ForgotPasswordBloc>(
      () => _i43.ForgotPasswordBloc(get<_i3.IAuth>()));
  gh.factory<_i44.HostAccountBloc>(
      () => _i44.HostAccountBloc(get<_i3.IAuth>(), get<_i17.IUserRepo>()));
  return get;
}
