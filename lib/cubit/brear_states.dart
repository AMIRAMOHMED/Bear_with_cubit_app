import 'package:rive/rive.dart';

class BearState {}

class BearMove extends BearState {
  Artboard? riveArtBoard;
  BearMove(this.riveArtBoard);
}

class Started extends BearState {}
