import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SportsCard extends StatefulWidget {
  const SportsCard({super.key});

  @override
  State<SportsCard> createState() => _SportsCardState();
}

class _SportsCardState extends State<SportsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(1, 0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/club_1.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'الاتحاد الكويتي',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '3',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/club_2.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'الكويت الرياضي',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
