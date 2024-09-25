
import 'package:flutter/material.dart';

import 'theme.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  void initState() {
    print('Page1 ishladi');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.background,
      body: Center(
        child: Text(
          'Bir',
          style: theme.textStyle.copyWith(
              fontSize: 48
          ),
        ),
      ),
    );
  }
}
