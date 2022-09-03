import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_gpl/utility/routs.dart';
import 'package:my_gpl/utility/userdata.dart';

class AppDrawer extends StatelessWidget {
  final int tilenumber;
  final String username;
  final String enroll;
  final String imgsrc;
  const AppDrawer(
      {super.key,
      this.tilenumber = 1,
      this.imgsrc = "",
      this.username = "",
      this.enroll = ""});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          Container(
            color: Colors.white,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              accountName: Text(
                UserData().getname(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(UserData().getenroll()),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "My GPL",
              style: TextStyle(
                fontWeight:
                    (tilenumber == 1) ? FontWeight.w800 : FontWeight.normal,
              ),
            ),
            subtitle: Text(
              "Government Polytechnic Lucknow",
              style: TextStyle(
                fontWeight:
                    (tilenumber == 1) ? FontWeight.w700 : FontWeight.normal,
              ),
            ),
            selected: (tilenumber == 1) ? true : false,
            selectedTileColor: Colors.black,
            selectedColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
              (tilenumber != 1)
                  ? Navigator.pushNamed(context, MyRouts.College)
                  : Null;
            },
          ),
          ListTile(
            title: Text(
              "My Library",
              style: TextStyle(
                fontWeight:
                    (tilenumber == 2) ? FontWeight.w800 : FontWeight.normal,
              ),
            ),
            subtitle: Text(
              "Government Polytechnic Lucknow Library",
              style: TextStyle(
                fontWeight:
                    (tilenumber == 2) ? FontWeight.w700 : FontWeight.normal,
              ),
            ),
            selected: (tilenumber == 2) ? true : false,
            selectedTileColor: Colors.black,
            selectedColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              (tilenumber != 2)
                  ? Navigator.pushNamed(context, MyRouts.librarydash)
                  : Null;
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70, 10, 70, 1),
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  alignment: Alignment.center,
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(35))),
              onPressed: () {},
              icon: Icon(Icons.logout_outlined),
              label: Text("Log out"),
            ),
          )
        ],
      ),
    );
  }
}
