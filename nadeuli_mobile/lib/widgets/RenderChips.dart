import 'package:flutter/material.dart';
import 'package:nadeuli_mobile/widgets/ChipItem.dart';

class RenderChips extends StatefulWidget {
  const RenderChips({
    super.key,
    required this.function,
    required this.color,
    required this.queryKey,
    required this.handleSelectedValue,
  });

  final Future<Map<String, dynamic>?> function;
  final Color color;
  final String queryKey;
  final handleSelectedValue;

  @override
  State<RenderChips> createState() => _RenderChipsState();
}

class _RenderChipsState extends State<RenderChips> {
  String checkedItem = '';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.function,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          var list = snapshot.data!["response"]["body"]["items"]["item"] ?? [];
          return Wrap(
            spacing: 8,
            children: list
                .map<Widget>(
                  (item) => InkWell(
                    onTap: () {
                      widget.handleSelectedValue(
                        key: widget.queryKey,
                        code: item["code"],
                      );

                      if (checkedItem == item["name"]) {
                        checkedItem = '';
                      } else {
                        checkedItem = item["name"];
                      }
                      setState(() {});
                    },
                    child: ChipItem(
                      color: widget.color,
                      label: item["name"],
                      code: item["code"],
                      isChecked: checkedItem == item["name"] ? true : false,
                    ),
                  ),
                )
                .toList(),
          );
        }
        return const Text(
          'loading',
          style: TextStyle(
            color: Colors.white,
          ),
        );
      },
    );
  }
}
