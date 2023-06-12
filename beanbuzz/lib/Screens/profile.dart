import 'package:beanbuzz/Screens/allProducts.dart';
import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.MyThemeColorbackground,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      child: Image(
                          image: NetworkImage(
                        'assets/images/profile.jpg',
                      )),
                    ),
                  ),
                ),
                const Text(
                  "Muhammad Nafay",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "mnafay0099@gmail.com",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'pacifico',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width >= 1000
                        ? 400
                        : MediaQuery.of(context).size.width / 0.5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.MyThemePrimaryColor,
                              side: BorderSide.none,
                              shape: StadiumBorder()),
                          child: const Text(
                            'Edit Profile',
                            style: TextStyle(),
                          )),
                    )),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 207, 205, 205)),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      'Setting',
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 207, 205, 205)),
                      child: Icon(
                        Icons.payment,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      'Billing Detail',
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 207, 205, 205)),
                      child: Icon(
                        Icons.person_search_outlined,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      'Order Statement',
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 207, 205, 205)),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      'Setting',
                    ),
                    trailing: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
