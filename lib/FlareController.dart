import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';

///
/// Flare/Riveアニメーションを制御するクラス
///
class FlareSimpleController extends FlareControls {
  // アニメーション名
  String _animationName;

  // アニメーション
  ActorAnimation _actorAnimation;
  FlareAnimationLayer _layer;
  int _count;

  // getter / setter
  get animationName => _animationName;
  get layer => _layer;

  /// コンストラクタ
  FlareSimpleController(this._animationName);

  @override
  void initialize(FlutterActorArtboard artboard) {
    super.initialize(artboard);
    // アニメーションを設定
    _actorAnimation = artboard.getAnimation(_animationName);
    _layer = FlareAnimationLayer();
    _layer.animation = _actorAnimation;
    _count = 0;
  }

//  @override
//  bool advance(FlutterActorArtboard artboard, double elapsed) {
//    if (_count > 0) {
//      _count = 0;
//      return false;
//    }
//    _count++;
//    //_actorAnimation.apply(elapsed, artboard, 1.0);
//    _layer.apply(artboard)
//    return true;
//  }
//@override
  //bool advance(FlutterActorArtboard artboard, double elapsed) {
//    double mix = _layer.mix + 1 * elapsed;
//    mix = mix.clamp(0.0, 1.0);
//    _layer.mix = 1;
////    if (mix != 0.0) {
//      _layer.time = (_layer.time + elapsed) % _layer.duration;
//      _layer.apply(artboard);
////    }
//
//    return false;
  //}
}