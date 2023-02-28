import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_test/models/continent.dart';

class ContinentCard extends StatelessWidget {
  const ContinentCard({
    super.key,
    required this.item,
  });

  final Continent item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 218, 230, 230),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            item.name,
            style: TextStyle(fontSize: 22),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/continents/${item.icon}.svg',
                color: item.color,
              ),
            ),
          )
        ],
      ),
    );
  }
}
