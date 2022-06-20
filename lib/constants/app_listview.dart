import 'package:flutter/material.dart';
import 'package:simplecode_accelerator/constants/app_styles.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
    required this.status,
    required this.people,
    required this.gender,
  }) : super(key: key);

  final List<String> status;
  final List<String> people;
  final List<String> gender;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 20,
            child: Image.asset('assets/images/bitmap/no_avatar.png'),
          ),
          title: Text(
            status[0],
            style: AppStyles.aliveText,
          ),
          dense: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                people[0],
                style: AppStyles.nameText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Человек, ${gender[0]}',
                  style: AppStyles.descriptionText,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 20,
            child: Image.asset('assets/images/bitmap/no_avatar.png'),
          ),
          title: Text(
            status[1],
            style: AppStyles.deadText,
          ),
          dense: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                people[1],
                style: AppStyles.nameText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Человек, ${gender[0]}',
                  style: AppStyles.descriptionText,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 20,
            child: Image.asset('assets/images/bitmap/no_avatar.png'),
          ),
          title: Text(
            status[0],
            style: AppStyles.aliveText,
          ),
          dense: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                people[2],
                style: AppStyles.nameText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Человек, ${gender[1]}',
                  style: AppStyles.descriptionText,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 20,
            child: Image.asset('assets/images/bitmap/no_avatar.png'),
          ),
          title: Text(
            status[0],
            style: AppStyles.aliveText,
          ),
          dense: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                people[3],
                style: AppStyles.nameText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Человек, ${gender[0]}',
                  style: AppStyles.descriptionText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
