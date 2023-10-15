import 'package:flutter/material.dart';
import 'package:nadeuli_mobile/apis/getTourInfo.dart';
import 'package:nadeuli_mobile/styles/app_colors.dart';
import 'package:nadeuli_mobile/styles/app_text_style.dart';

class AreaBasedTour extends StatelessWidget {
  const AreaBasedTour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getTourInfo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var tourInfos =
              snapshot.data!["response"]["body"]["items"]["item"] ?? [];
          return Expanded(
            child: GridView.builder(
              itemCount: tourInfos.length ?? 0,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, idx) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        tourInfos[idx]['firstimage'] != ''
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                child: Image.network(
                                  tourInfos[idx]['firstimage'],
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                  color: AppColors.gray,
                                ),
                                child: Image.asset(
                                  'assets/logos/logo_gray.png',
                                ),
                              ),
                        Text(
                          tourInfos[idx]['title'],
                          style: AppTextStyles.body14M(),
                        ),
                        Text(
                          tourInfos[idx]['addr1'],
                          style: AppTextStyles.body14R(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
        return const Text('No data');
      },
    );
  }
}
