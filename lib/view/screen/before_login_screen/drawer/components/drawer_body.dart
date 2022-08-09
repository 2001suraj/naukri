import 'package:flutter/material.dart';
import 'package:naukri/helper/buildListTile.dart';
  Column buildBody() {
    return Column(
          children: [
            BuildListTile(
              icon: Icon(Icons.search),
              title: 'Search jobs',
              subtitle: '',
              tap: () {},
            ),
             BuildListTile(
              icon: Icon(Icons.chat),
              title: 'Chat for help  (New) ',
              subtitle: '',

              tap: () {},
            ), BuildListTile(
              icon: Icon(Icons.calendar_view_week_rounded),
              title: 'Jobseeker services (Paid) ',
              tap: () {},
              subtitle: '',

            ), BuildListTile(
              icon: Icon(Icons.book),
              title: 'Online course',
              subtitle: '',

              tap: () {},
            ), BuildListTile(
              icon: Icon(Icons.menu),
              subtitle: '',

              title: 'Naukri blog',
              tap: () {},
            ), BuildListTile(
              icon: Icon(Icons.help),
              title: 'How Naukri works ',
              subtitle: '',


              tap: () {},
            ),
             BuildListTile(
              icon: Icon(Icons.message),
              subtitle: '',

              title: 'Write to us ',
              tap: () {},
            ), BuildListTile(
              icon: Icon(Icons.perm_device_information_rounded),
              title: 'About us ',
              subtitle: '',

              tap: () {},

            ),
          ],
        );
  }