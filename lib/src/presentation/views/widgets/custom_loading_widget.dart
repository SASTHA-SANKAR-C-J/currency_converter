
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CustomLoadingWidget extends StatelessWidget {
  final Color? color;
  const CustomLoadingWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.hexagonDots(color:color?? Colors.white, size:20.dp ),
    );
  }
}