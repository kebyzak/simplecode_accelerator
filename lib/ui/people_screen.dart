import 'package:flutter/material.dart';
import 'package:simplecode_accelerator/constants/app_colors.dart';
import 'package:simplecode_accelerator/constants/app_gridview.dart';
import 'package:simplecode_accelerator/constants/app_listview.dart';
import 'package:simplecode_accelerator/constants/app_styles.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  final List<String> people = <String>[
    'Рик Санчез',
    'Алан Райлс',
    'Саммер Смит',
    'Морти Смит',
  ];

  final List<String> status = <String>['живой', 'мертвый'];
  final List<String> gender = <String>['Мужской', 'Женский'];
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(16, 54, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.filter_alt_outlined),
                hintText: 'Search',
                filled: true,
                fillColor: AppColors.hiddenBackgroundColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none,
                ),
                hintStyle: AppStyles.hiddenText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Всего персонажей: 200',
                    style: AppStyles.filterText,
                    textAlign: TextAlign.start,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isListView = !isListView;
                      });
                    },
                    child: Align(
                      child: isListView
                          ? const Icon(Icons.list)
                          : const Icon(Icons.grid_view),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: isListView
                  ? MyListView(status: status, people: people, gender: gender)
                  : MyGridView(status: status, people: people, gender: gender),
            ),
          ],
        ),
      ),
    );
  }
}
