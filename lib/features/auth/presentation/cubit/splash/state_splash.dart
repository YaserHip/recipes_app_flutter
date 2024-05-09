part of 'cubit_splash.dart';

sealed class StateSplash {}

class StateSplashInitial extends StateSplash {}

class StateSplashLoaded extends StateSplash {
  final int data;

  StateSplashLoaded({required this.data});
}

class StateSplashError extends StateSplash {
  final String message;

  StateSplashError(this.message);
}
