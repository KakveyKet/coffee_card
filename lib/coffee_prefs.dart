import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strrength = 1;
  int sugar = 1;
  void increaseStrength() {
    setState(() {
      strrength = strrength < 5 ? strrength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            Text('$strrength'),
            for (int i = 0; i < strrength; i++)
              Image.asset(
                "assets/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            FilledButton(
              onPressed: increaseStrength,
              // ignore: sort_child_properties_last
              child: const Text('+'),
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text('Sugar: '),
            // Text('$sugar'),
            if (sugar == 0) const Text('No sugar...'),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            TextButton(
              onPressed: increaseSugar,
              child: const Text('+'),
              style: TextButton.styleFrom(foregroundColor: Colors.brown),
            )
          ],
        ),
      ],
    );
  }
}
