import 'package:bear/consts/animation_enum.dart';
import 'package:bear/cubit/brear_states.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

class BearCubit extends Cubit<BearState> {
  late Artboard _artboard;

  BearCubit() : super(Started()) {
    _initializeRiveArtboard();
  }

  void _initializeRiveArtboard() async {
    final data = await rootBundle.load("assets/bear.riv");
    final file = RiveFile.import(data);
    _artboard = file.mainArtboard;
  }

  void _setAnimation(String animationName) {
    _artboard.addController(
      SimpleAnimation(animationName),
    );
  }

  void lookLeft() {
    _setAnimation(AnimationEnum.Look_down_left.name);
    emit(BearMove(_artboard));
  }

  void lookRight() {
    _setAnimation(AnimationEnum.Look_down_right.name);
    emit(BearMove(_artboard));
  }

  void lookIdle() {
    _setAnimation(AnimationEnum.idle.name);
    emit(BearMove(_artboard));
  }

  void handsUp() {
    _setAnimation(AnimationEnum.Hands_up.name);
    emit(BearMove(_artboard));
  }

  void angry() {
    _setAnimation(AnimationEnum.fail.name);
    emit(BearMove(_artboard));
  }

  void handsDown() {
    _setAnimation(AnimationEnum.hands_down.name);
    emit(BearMove(_artboard));
  }

  void happy() {
    _setAnimation(AnimationEnum.success.name);
    emit(BearMove(_artboard));
  }
}
