import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_links/uni_links.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

bool _initialUriIsHandled = false;
String param = '';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(_Initial());
  StreamSubscription? _sub;

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield _Initial();
        // handle app links app running(backg or foregr)
        _sub = uriLinkStream.listen((Uri? uri) {
          if (uri != null) {
            print('uri not null ${uri.queryParameters['id']}');
            param = uri.queryParameters['id'] ?? '';
            add(AppEvent.getLink(param));
          }
        });

        //handle links the one the app was started with
        if (!_initialUriIsHandled) {
          print('initial uri called');
          _initialUriIsHandled = true;
          try {
            final uri = await getInitialUri();
            if (uri != null) {
              print('initial uri found $uri');
              final String param = uri.queryParameters['id'] ?? '';
              //add(AppEvent.getLink(param));
            }
          } on PlatformException {
            print('falied to get initial uri');
          } on FormatException catch (err) {
            print('malformed initial uri $err');
          }
        }
      },
      getLink: (e) async* {
        yield AppState.link(e.param);
      },
    );
  }

  void dispose() {
    _sub?.cancel();
  }
}
