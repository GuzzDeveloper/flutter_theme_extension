import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).extension<AppColors>()!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
              color: colors.accentuated,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
