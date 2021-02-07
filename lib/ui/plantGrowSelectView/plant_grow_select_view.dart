import 'package:flutter/material.dart';

import 'widgets/back_icon.dart';
import 'widgets/body_header_row.dart';
import 'widgets/filtered_result_list.dart';
import 'widgets/header_card.dart';
import 'widgets/header_main_text.dart';
import 'widgets/search_and_filter_icons.dart';

class PlantGrowSelectView extends StatelessWidget {
  static const String route = '/plantGrowSelect';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Stack(
              children: [
                HeaderCard(),
                BackIcon(),
                SearchAndFilterIcons(),
                HeaderMainText(),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                BodyHeaderRow(),
                FilteredResultList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
