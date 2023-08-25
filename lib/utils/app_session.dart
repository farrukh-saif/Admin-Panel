import 'package:flutter/material.dart';

enum AuthState {
  loggingIn,
  forgotPassword,
  signingUp,
  loggedIn,
}

enum Subpage {
  dashboard,
  controlPanel,
  manageUsers,
}

class AppSession {
  static final AppSession _instance = AppSession._internal();

  AppSession._internal();

  //Value notifier to notify the app about the current authentication state
  final ValueNotifier<AuthState> _authStateNotifier =
      ValueNotifier<AuthState>(AuthState.loggingIn);

  ValueNotifier<AuthState> get authState => _authStateNotifier;

  set authState(ValueNotifier<AuthState> value) {
    _authStateNotifier.value = value.value;
  }

  //Value notifer to notify the app about the subpage in the Skeleton widget
  final ValueNotifier<Subpage> _subpageNotifier =
      ValueNotifier<Subpage>(Subpage.dashboard);

  ValueNotifier<Subpage> get subpage => _subpageNotifier;

  set subpage(ValueNotifier<Subpage> value) {
    _subpageNotifier.value = value.value;
  }

  factory AppSession() {
    return _instance;
  }
}
