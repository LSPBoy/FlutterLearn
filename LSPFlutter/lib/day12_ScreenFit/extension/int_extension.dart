import '../shared/size_fit.dart';

extension DoubleFix on int {
  // double px() {
  //   return LSPSizeFit.setPx(toDouble());
  // }
  //
  // double rpx() {
  //   return LSPSizeFit.setRpx(toDouble());
  // }

  double get px {
    return LSPSizeFit.setPx(toDouble());
  }

  double get rpx {
    return LSPSizeFit.setRpx(toDouble());
  }
}