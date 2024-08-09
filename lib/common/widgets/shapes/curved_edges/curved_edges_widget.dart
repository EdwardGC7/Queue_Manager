import 'package:queue_manager/common/widgets/shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class GCurvedEdgesWidget extends StatelessWidget {
  const GCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GCustomCurvedEdges(),
      child: child,
    );
  }
}
