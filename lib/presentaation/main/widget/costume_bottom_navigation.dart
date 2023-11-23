import 'package:flutter/material.dart';

import '../../../app/theme.dart';

class CostumeBottomNavigation extends StatelessWidget {
  const CostumeBottomNavigation(
      {required this.items, required this.index, required this.onTap, Key? key})
      : super(key: key);
  final List<Item> items;
  final int index;

  final Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    assert(items.isNotEmpty);
    return Container(
      height: 85,
      color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: LayoutBuilder(builder: (context, c) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < items.length; i++)
                    AnimatedAlign(
                      alignment: i == index
                          ? Alignment.topCenter
                          : Alignment.bottomCenter,
                      duration: const Duration(milliseconds: 100),
                      child: Container(
                        width: c.maxWidth / (items.length + 0.4),
                        height: c.maxWidth / (items.length + 0.4),
                        padding:
                            i != index ? const EdgeInsets.only(top: 10) : null,
                        decoration: i == index
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade600,
                                    blurRadius: 5,

                                    offset:
                                        const Offset(1, 2), // Shadow position
                                  ),
                                ],
                                color: Colors.white)
                            : null,
                        child: InkWell(
                          onTap: () => onTap(i),
                          splashFactory: NoSplash.splashFactory,
                          borderRadius: BorderRadius.circular(50),
                          child: _Item(
                            icon: items[i].icon,
                            title: items[i].title,
                            active: i == index,
                            activeTitle: items[i].activeTitle,
                            activeIcon: items[i].activeIcon,
                          ),
                        ),
                      ),
                    )
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}

class Item {
  Item(
      {required this.icon,
      required this.title,
      this.activeTitle,
      this.activeIcon,
      Key? key});
  final Widget icon;
  final Widget? activeIcon;
  final Text title;
  final Text? activeTitle;
}

class _Item extends StatelessWidget {
  _Item(
      {required this.icon,
      required this.title,
      required this.active,
      this.activeIcon,
      this.activeTitle,
      Key? key})
      : super(key: key);
  final Widget icon;
  final Widget? activeIcon;
  final Text title;
  final Text? activeTitle;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        active ? (activeIcon ?? icon) : icon,
        active ? (activeTitle ?? title) : title,
      ],
    );
  }
}
