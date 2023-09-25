import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Widget? unselectedImage;
  final Widget? selectedImage;

  const StarRating({
    super.key,
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 40,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    this.unselectedImage,
    this.selectedImage
  });

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: buildUnselectedStar(),),
        Row(mainAxisSize: MainAxisSize.min, children: buildSelectedStar(),),
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage ?? Icon(
          Icons.star_border, color: widget.unselectedColor, size: widget.size);
    });
  }

  List<Widget> buildSelectedStar() {
    //1、创建stars
    List<Widget> stars = [];
    final star = widget.selectedImage ?? Icon(Icons.star, color: widget.selectedColor, size: widget.size);

    //2、构建满填充的star
    //2.1一个星星代表多少好评率
    double oneValue = widget.maxRating / widget.count;
    //2.2当前好评率需要几个完整的星星
    int entireCount = (widget.rating / oneValue).floor();
    for(var i = 0; i < entireCount; i++) {
      stars.add(star);
    }
    //2.3构建剩余部分的star
    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final otherStar = ClipRect(clipper: StarClipper(leftWidth), child: star,);
    stars.add(otherStar);

    if (stars.length > widget.count) {
      return stars.sublist(0, widget.count);
    }
    return stars;
  }
}

class StarClipper extends CustomClipper<Rect> {
  double width;
  StarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(StarClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }
}
