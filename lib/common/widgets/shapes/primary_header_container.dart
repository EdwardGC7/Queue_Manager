import 'package:queue_manager/common/widgets/shapes/circular_container.dart';
import 'package:queue_manager/common/widgets/shapes/curved_edges/curved_edges_widget.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  const GPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GCurvedEdgesWidget(
      child: Container(
        color: GColors.primary,
        padding: const EdgeInsets.all(0),
        child: Container(
          color: GColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: GCircularContainer(
                  backgroundColor: GColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: GCircularContainer(
                  backgroundColor: GColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
