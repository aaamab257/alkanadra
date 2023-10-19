import 'package:alkanadra/common/search_bar.dart';
import 'package:alkanadra/ui/notification/notifications_screen.dart';
import 'package:flutter/material.dart';

import 'images.dart';

PreferredSizeWidget homeAppBar(TextEditingController controller) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.Scaffold_BG),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.8),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Builder(builder: (context2) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context2).openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/menu.png'),
                      ),
                    );
                  }),
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    const NotificationsScreen(),
                                transitionDuration:
                                    const Duration(milliseconds: 400),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  const begin = Offset(0.0, 0.1);
                                  const end = Offset.zero;
                                  final tween = Tween(begin: begin, end: end);
                                  final offsetAnimation =
                                      animation.drive(tween);

                                  return SlideTransition(
                                    position: offsetAnimation,
                                    child: child,
                                  );
                                }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/notification.png'),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: InkWell(
              onTap: () {},
              child: SearchField(
                controller: controller,
                isPass: false,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/report_dialog.png'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
