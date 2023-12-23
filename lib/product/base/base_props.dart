import 'package:fake_store/core/constants/duration_constants.dart';

import '../../core/constants/image/image_constants.dart';

mixin BaseProps{
  ImageConstatns get imageConstants => ImageConstatns.instance;
  DurationConstants get durationConstants => DurationConstants.instance;
}