import 'package:flutter/material.dart';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';

import 'package:itgro_test/components/application/app_theme.dart';
import 'package:itgro_test/widgets/avatar.dart';
import 'package:itgro_test/models/profile.dart';

class ProfileSliverList extends StatelessWidget {
  ProfileSliverList({this.backgroundColor, this.profileList});
  final BuiltList<Profile> profileList;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 78,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    //borderRadius: getBorder(index, profileList),
                    color: backgroundColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Avatar(
                          radius: 20,
                          photoUrl: profileList[index].picture.large,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: _ProfilePreview(
                          fullName:
                              '${profileList[index].name.first} ${profileList[index].name.last}',
                          location: '${profileList[index].location.postcode} '
                              '${profileList[index].location.city}, '
                              '${profileList[index].location.street.number} '
                              '${profileList[index].location.street.name}',
                        ),
                      ),
                    ],
                  ),
                ),
                if (index != (profileList.length - 1))
                  Divider(
                    height: 0.0,
                    thickness: 1.0,
                    color: AppTheme.of(context).graySeparatorColor,
                  ),
              ],
            ),
          );
        },
        childCount: profileList.length,
      ),
    );
  }

  BorderRadius getBorder(int index, BuiltList<dynamic> list) {
    if (index == 0) {
      return BorderRadius.only(
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(12.0),
      );
    } else if (index == list.length - 1) {
      return BorderRadius.only(
        bottomLeft: Radius.circular(12.0),
        bottomRight: Radius.circular(12.0),
      );
    } else
      return null;
  }
}

class _ProfilePreview extends StatelessWidget {
  const _ProfilePreview({
    this.fullName,
    this.location,
  });

  final String fullName;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            fullName,
            style: AppTheme.of(context).bodyDarkTextStyle,
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            location,
            style: AppTheme.of(context)
                .bodyDarkTextStyle
                .copyWith(color: Colors.white10),
          ),
        ],
      ),
    );
  }
}
