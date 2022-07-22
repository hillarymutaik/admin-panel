import 'package:car_wash/screens/login/login_components/constants/enums/animation_type.dart';

import '../constants/enums/components.dart';
/// [AnimatedComponent] represents a component with its animation type.
class AnimatedComponent {
  /// Default constructor.
  const AnimatedComponent({
    required this.component,
    this.animationType = AnimationType.right,
  });

  /// Represents the component itself.
  final LoginComponents component;

  /// Animation type of the component.
  /// Note that this will only affect the animation in the MOBILE view.
  final AnimationType animationType;
}
