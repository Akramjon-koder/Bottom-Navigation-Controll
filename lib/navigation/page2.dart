
import 'package:flutter/material.dart';

import 'theme.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  void initState() {
    print('Page2 ishladi');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.background,
      body: Center(
        child: Text(
          'Ikki',
          style: theme.textStyle.copyWith(
              fontSize: 48
          ),
        ),
      ),
    );
  }
}
