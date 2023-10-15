import 'package:flutter/material.dart';
import 'package:nadeuli_mobile/styles/app_colors.dart';
import 'package:nadeuli_mobile/styles/app_text_style.dart';

class ChipItem extends StatelessWidget {
  const ChipItem({
    super.key,
    required this.color,
    required this.label,
    required this.code,
    required this.isChecked,
  });

  final Color color;
  final String label;
  final String code;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: color,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(
                Icons.circle,
                color: AppColors.bgColor,
                size: 32,
              ),
              isChecked
                  ? const Positioned(
                      top: -4,
                      child: Icon(
                        Icons.check,
                        color: AppColors.red,
                        size: 36,
                      ),
                    )
                  : Container(),
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            '#$label',
            style: AppTextStyles.body16M(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
