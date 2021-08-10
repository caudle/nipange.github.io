// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/account/account_bloc.dart' as _i34;
import 'application/add_review/add_review_bloc.dart' as _i35;
import 'application/amenity/amenity_bloc.dart' as _i36;
import 'application/auth/auth_check/auth_bloc.dart' as _i37;
import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i41;
import 'application/auth/log_in/log_in_bloc.dart' as _i20;
import 'application/auth/login_details/login_details_bloc.dart' as _i21;
import 'application/auth/reset_password/resetpassword_bloc.dart' as _i28;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i31;
import 'application/detail/detail_bloc.dart' as _i38;
import 'application/explore/explore_bloc.dart' as _i39;
import 'application/filter/filter_bloc.dart' as _i40;
import 'application/listing/listing_bloc.dart' as _i18;
import 'application/listing_item/item_bloc.dart' as _i17;
import 'application/location/location_bloc.dart' as _i19;
import 'application/person_info/person_bloc.dart' as _i22;
import 'application/photos/photos_bloc.dart' as _i23;
import 'application/premium/premium_bloc.dart' as _i24;
import 'application/price/price_bloc.dart' as _i25;
import 'application/property/property_bloc.dart' as _i26;
import 'application/report/report_bloc.dart' as _i27;
import 'application/saved/saved_bloc.dart' as _i29;
import 'application/search/search_bloc.dart' as _i30;
import 'application/stats/stats_bloc.dart' as _i32;
import 'application/videos/videos_bloc.dart' as _i33;
import 'domain/auth/i_auth.dart' as _i3;
import 'domain/category/i_category_repo.dart' as _i5;
import 'domain/listing/i_listing_repo.dart' as _i7;
import 'domain/report/i_report_repo.dart' as _i9;
import 'domain/review/i_review_repo.dart' as _i11;
import 'domain/search/i_search_repo.dart' as _i13;
import 'domain/user/i_user_repo.dart' as _i15;
import 'infrastructure/auth/node_api_auth.dart' as _i4;
import 'infrastructure/category/category_repo.dart' as _i6;
import 'infrastructure/listing/listing_repo.dart' as _i8;
import 'infrastructure/report/report_repo.dart' as _i10;
import 'infrastructure/review/review_repo.dart' as _i12;
import 'infrastructure/search/search_repo.dart' as _i14;
import 'infrastructure/user/user_repo.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuth>(() => _i4.NodeApiAuth());
  gh.lazySingleton<_i5.ICategoryRepo>(() => _i6.CategoryRepo());
  gh.lazySingleton<_i7.IListingRepo>(() => _i8.ListingRepo());
  gh.lazySingleton<_i9.IReportRepo>(() => _i10.ReportRepo());
  gh.lazySingleton<_i11.IReviewRepo>(() => _i12.ReviewRepo());
  gh.lazySingleton<_i13.ISearchRepo>(() => _i14.SearchRepo());
  gh.lazySingleton<_i15.IUserRepo>(() => _i16.UserRepo());
  gh.factory<_i17.ItemBloc>(() => _i17.ItemBloc(get<_i15.IUserRepo>()));
  gh.factory<_i18.ListingBloc>(() => _i18.ListingBloc(get<_i7.IListingRepo>()));
  gh.factory<_i19.LocationBloc>(
      () => _i19.LocationBloc(get<_i7.IListingRepo>()));
  gh.factory<_i20.LogInBloc>(() => _i20.LogInBloc(get<_i3.IAuth>()));
  gh.factory<_i21.LoginDetailsBloc>(
      () => _i21.LoginDetailsBloc(get<_i3.IAuth>()));
  gh.factory<_i22.PersonBloc>(() => _i22.PersonBloc(get<_i15.IUserRepo>()));
  gh.factory<_i23.PhotosBloc>(() => _i23.PhotosBloc(get<_i7.IListingRepo>()));
  gh.factory<_i24.PremiumBloc>(
      () => _i24.PremiumBloc(get<_i15.IUserRepo>(), get<_i3.IAuth>()));
  gh.factory<_i25.PriceBloc>(() => _i25.PriceBloc(get<_i7.IListingRepo>()));
  gh.factory<_i26.PropertyBloc>(
      () => _i26.PropertyBloc(get<_i7.IListingRepo>(), get<_i3.IAuth>()));
  gh.factory<_i27.ReportBloc>(() => _i27.ReportBloc(get<_i9.IReportRepo>()));
  gh.factory<_i28.ResetpasswordBloc>(
      () => _i28.ResetpasswordBloc(get<_i3.IAuth>()));
  gh.factory<_i29.SavedBloc>(() => _i29.SavedBloc(get<_i3.IAuth>()));
  gh.factory<_i30.SearchBloc>(() => _i30.SearchBloc(get<_i13.ISearchRepo>()));
  gh.factory<_i31.SignUpFormBloc>(() => _i31.SignUpFormBloc(get<_i3.IAuth>()));
  gh.factory<_i32.StatsBloc>(() => _i32.StatsBloc(get<_i7.IListingRepo>()));
  gh.factory<_i33.VideosBloc>(() => _i33.VideosBloc(get<_i7.IListingRepo>()));
  gh.factory<_i34.AccountBloc>(
      () => _i34.AccountBloc(get<_i15.IUserRepo>(), get<_i3.IAuth>()));
  gh.factory<_i35.AddReviewBloc>(() => _i35.AddReviewBloc(
      get<_i15.IUserRepo>(), get<_i11.IReviewRepo>(), get<_i3.IAuth>()));
  gh.factory<_i36.AmenityBloc>(() => _i36.AmenityBloc(get<_i7.IListingRepo>()));
  gh.factory<_i37.AuthBloc>(() => _i37.AuthBloc(get<_i3.IAuth>()));
  gh.factory<_i38.DetailBloc>(() => _i38.DetailBloc(
      get<_i15.IUserRepo>(), get<_i11.IReviewRepo>(), get<_i3.IAuth>()));
  gh.factory<_i39.ExploreBloc>(() => _i39.ExploreBloc(get<_i5.ICategoryRepo>(),
      get<_i7.IListingRepo>(), get<_i3.IAuth>(), get<_i15.IUserRepo>()));
  gh.factory<_i40.FilterBloc>(() => _i40.FilterBloc(get<_i13.ISearchRepo>()));
  gh.factory<_i41.ForgotPasswordBloc>(
      () => _i41.ForgotPasswordBloc(get<_i3.IAuth>()));
  return get;
}
