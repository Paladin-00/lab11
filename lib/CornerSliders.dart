import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'rounded_corners_provider.dart';

class CornerSliders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final corners = Provider.of<RoundedCornersProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSliderColumn(
                context,
                label: 'Top Left',
                value: corners.topLeft,
                onChanged: (value) => corners.setTopLeft(value),
              ),
              _buildSliderColumn(
                context,
                label: 'Top Right',
                value: corners.topRight,
                onChanged: (value) => corners.setTopRight(value),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSliderColumn(
                context,
                label: 'Bottom Left',
                value: corners.bottomLeft,
                onChanged: (value) => corners.setBottomLeft(value),
              ),
              _buildSliderColumn(
                context,
                label: 'Bottom Right',
                value: corners.bottomRight,
                onChanged: (value) => corners.setBottomRight(value),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSliderColumn(BuildContext context, {required String label, required double value, required ValueChanged<double> onChanged}) {
    return Column(
      children: [
        Text(label, style: TextStyle(fontSize: 16)),
        Slider(
          value: value,
          max: 100,
          label: '$label: ${value.toStringAsFixed(1)}',
          onChanged: onChanged,
        ),
        Text('${value.toStringAsFixed(1)}', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}