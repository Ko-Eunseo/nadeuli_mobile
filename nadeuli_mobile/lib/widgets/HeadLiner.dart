import 'package:flutter/material.dart';
import 'package:nadeuli_mobile/styles/app_colors.dart';
import 'package:nadeuli_mobile/styles/app_text_style.dart';

class HeadLiner extends StatelessWidget {
  const HeadLiner({
    super.key,
    required this.selected,
  });

  final Map<String, String> selected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '태그만 몇개 선택해도 여행계획 끝',
            style: AppTextStyles.header16M(
              color: Colors.white,
            ),
          ),
          Text(
            'K-여행 추천 서비스',
            style: AppTextStyles.header20E(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Chip(
            backgroundColor: AppColors.bgColor,
            label: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "나는",
                  style: AppTextStyles.body16M(),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    // selections = DropdownButton(
                    //   items: selected,
                    //   onChanged: (value) {},
                    // );
                  },
                  child: Chip(
                    // key: 'areaCode',
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Stack(
                          alignment: AlignmentDirectional.center,
                          clipBehavior: Clip.none,
                          children: [
                            Icon(
                              Icons.circle,
                              color: AppColors.bgColor,
                              size: 32,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          // selected["areaCode"] ?? "#어디서",
                          "#어디서",
                          style: AppTextStyles.body16M(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: AppColors.yellow,
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Chip(
                  // key: 'cat2',
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Stack(
                        alignment: AlignmentDirectional.center,
                        clipBehavior: Clip.none,
                        children: [
                          Icon(
                            Icons.circle,
                            color: AppColors.bgColor,
                            size: 32,
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "#어떤",
                        style: AppTextStyles.body16M(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: AppColors.green,
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "여행을 갈 거예요!",
                  style: AppTextStyles.body16M(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
