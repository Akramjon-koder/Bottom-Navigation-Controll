import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'page1.dart';
import 'page2.dart';
import 'theme.dart';

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

List pageNames = [
  'Bir',
  'Ikki',
];

List pageIcons = [
  FontAwesomeIcons.house,
  FontAwesomeIcons.user,
];

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: theme.background,
      body: Consumer(
        builder: (context, ref, child) {
          final pageIndex = ref.watch(counterStateProvider);
          return Column(
            children: [
              Expanded(
                child: getPage(pageIndex),
              ),
              DecoratedBox(
                decoration: theme.cardDecor.copyWith(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for(int i = 0; i < pageNames.length; i++)
                      IconButton(
                        onPressed: () => ref.read(counterStateProvider.notifier).state = i,
                        icon: Column(
                          children: [
                            FaIcon(
                              pageIcons[i],
                              color: pageIndex == i ? theme.yellow : theme.grey,
                            ),
                            const SizedBox(height: 5,),
                            Text(
                              pageNames[i],
                              style: theme.textStyle.copyWith(
                                  fontSize: 14
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              )
            ],
          );
        }
      ),
    );
  }

  Widget getPage(int index){
    if(index == 0){
      return const Page1();
    }else{
      return const Page2();
    }
  }
}



