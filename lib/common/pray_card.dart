import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PrayCard extends StatelessWidget {
  const PrayCard({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/pray.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'الصلاه القادمه',
                style: TextStyle(
                    color: Color(0xFF616161),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'صلاة الفجر',
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          '04:27 ص',
                          style: TextStyle(
                              color: Color(0xFF505050),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'باقي 6 سعات و 3 دقائق',
                          style: TextStyle(
                              color: Color(0xFF505050),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('assets/images/moon.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
