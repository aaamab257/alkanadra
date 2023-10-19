import 'package:alkanadra/common/colors.dart';
import 'package:alkanadra/common/default_app_bar.dart';
import 'package:alkanadra/common/text_field.dart';
import 'package:dropdown_model_list/drop_down/model.dart';
import 'package:dropdown_model_list/drop_down/select_drop_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../common/images.dart';

class CurrancyChange extends StatefulWidget {
  const CurrancyChange({super.key});

  @override
  State<CurrancyChange> createState() => _CurrancyChangeState();
}

class _CurrancyChangeState extends State<CurrancyChange> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "Jatin Sharma"),
    OptionItem(id: "2", title: "Puneet Chand"),
    OptionItem(id: "3", title: "Vikas Bhardwaj"),
    OptionItem(id: "4", title: "Rakesh Kumar"),
    OptionItem(id: "5", title: "Vikram Verma"),
    OptionItem(id: "6", title: "Kiran Yadav"),
    OptionItem(id: "7", title: "Pradeep Kumar"),
    OptionItem(id: "8", title: "Amit Kumar"),
    OptionItem(id: "9", title: "Sweta Sharma"),
    OptionItem(id: "10", title: "Ankit Bhist"),
  ]);
  OptionItem optionItemSelected = OptionItem(title: "Select User");
  TextEditingController _currancyFromcontroller = TextEditingController();
  TextEditingController _currancyTocontroller = TextEditingController();

  TextEditingController _moneyCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar('تحويل العملات', true, context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.Scaffold_BG),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                  color: ConstantColors.white_color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 70,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9F7F7),
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              controller: _moneyCOntroller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'المبلغ',
                                  hintStyle: TextStyle(
                                      color: ConstantColors.green_btn,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'التحويل من',
                              style: TextStyle(
                                color: ConstantColors.black_color,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF9F7F7),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          backgroundColor: Colors.transparent,
                                          builder: (context) {
                                            return Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              decoration: BoxDecoration(
                                                color: ConstantColors.white_color,
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(25),
                                                  topRight: Radius.circular(25),
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Image.asset(
                                              'assets/images/us.png'),
                                        ),
                                        const Expanded(
                                          flex: 2,
                                          child: Text(
                                            'دولار امريكي',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Image.asset(
                                              'assets/images/drop_arrow.png'),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            const Text(
                              'التحويل الى',
                              style: TextStyle(
                                color: ConstantColors.black_color,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF9F7F7),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.5,
                                              decoration: BoxDecoration(
                                                color: ConstantColors.white_color,
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(25),
                                                  topRight: Radius.circular(25),
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Image.asset(
                                              'assets/images/egypt.png'),
                                        ),
                                        const Expanded(
                                          flex: 2,
                                          child: Text(
                                            'جنيه مصري',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Image.asset(
                                              'assets/images/drop_arrow.png'),
                                        ),
                                      ],
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
