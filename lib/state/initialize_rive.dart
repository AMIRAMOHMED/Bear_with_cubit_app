// import 'package:bear/consts/animation_enum.dart';
// import 'package:flutter/services.dart';
// import 'package:rive/rive.dart';

// class InitalizeRive{

//  RiveAnimationController controllerFail =
//       SimpleAnimation(AnimationEnum.fail.name);

//  RiveAnimationController controllerHandsDown =
//       SimpleAnimation(AnimationEnum.hands_down.name);

//   RiveAnimationController controllerHandsUp =
//       SimpleAnimation(AnimationEnum.Hands_up.name);

//   RiveAnimationController controllerLookDownLeft =
//       SimpleAnimation(AnimationEnum.Look_down_left.name);

//    RiveAnimationController controllerLookDownRight =
//       SimpleAnimation(AnimationEnum.Look_down_right.name);

//    RiveAnimationController controllerLookIdle =
//       SimpleAnimation(AnimationEnum.idle.name);

//    RiveAnimationController controllerSuccess =
//       SimpleAnimation(AnimationEnum.success.name);

//   Artboard? riveArtBoard;
//    void removeAllControllers() {
//     riveArtBoard?.artboard.removeController(controllerFail);
//     riveArtBoard?.artboard.removeController(controllerHandsDown);
//     riveArtBoard?.artboard.removeController(controllerHandsUp);
//     riveArtBoard?.artboard.removeController(controllerLookDownLeft);
//     riveArtBoard?.artboard.removeController(controllerLookDownRight);
//     riveArtBoard?.artboard.removeController(controllerSuccess);
//     riveArtBoard?.artboard.removeController(controllerLookIdle);
//   }
//  _initializeRiveArtboard() async {
//     final data = await rootBundle.load("assets/bear.riv");
//     final file = RiveFile.import(data);
//     final artboard = file.mainArtboard;
//     riveArtBoard = artboard;
//     return riveArtBoard;
//   }

// }