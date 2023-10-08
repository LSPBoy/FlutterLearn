import '../shared/size_fit.dart';

extension DoubleFix on double {
  // double px() {
  //   return LSPSizeFit.setPx(this);
  // }
  //
  // double rpx() {
  //   return LSPSizeFit.setRpx(this);
  // }


  double get px {
    return LSPSizeFit.setPx(this);
  }

  double get rpx {
    return LSPSizeFit.setRpx(this);
  }
}