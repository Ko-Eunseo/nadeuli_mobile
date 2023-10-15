// ignore_for_file: void_checks

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nadeuli_mobile/apis/getArea.dart';
import 'package:nadeuli_mobile/apis/getCategory.dart';
import 'package:nadeuli_mobile/styles/app_colors.dart';
import 'package:nadeuli_mobile/widgets/AreaBasedTour.dart';
import 'package:nadeuli_mobile/widgets/HeadLiner.dart';
import 'package:nadeuli_mobile/widgets/RenderChips.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var dio = Dio();
  var selected = {
    "cat2": '',
    "areaCode": '',
  };

  void handleSelectedValue({
    required String key,
    required String code,
  }) {
    if (selected.containsKey(key) && selected.containsValue(code)) {
      selected[key] = '';
      return;
    }
    selected = {...selected, key: code};
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          width: 150,
          child: Image.asset(
            'assets/logos/logo.png',
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/billboard.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeadLiner(
                  selected: selected,
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  children: [
                    RenderChips(
                      queryKey: 'areaCode',
                      function: getArea(),
                      color: AppColors.yellow,
                      handleSelectedValue: handleSelectedValue,
                    ),
                    RenderChips(
                      queryKey: 'cat2',
                      function: getCategory(),
                      color: AppColors.green,
                      handleSelectedValue: handleSelectedValue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const Positioned(
          //   bottom: -17,
          //   left: 0,
          //   right: 0,
          //   child: SizedBox(
          //     height: 50,
          //     child: Icon(
          //       Icons.change_history,
          //       size: 100,
          //       color: AppColors.bgColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
