import 'package:facebook_clone_ui/consts/helpers.dart';
import 'package:facebook_clone_ui/screens/widgets/add_post.dart';
import 'package:facebook_clone_ui/screens/widgets/appbar.dart';
import 'package:facebook_clone_ui/screens/widgets/menu.dart';
import 'package:facebook_clone_ui/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> list = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/home.svg',
        color: CustomColors.riverBed,
      ),
      activeIcon: SvgPicture.asset(
        'assets/home.svg',
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Stack(
        children: [
          SvgPicture.asset(
            'assets/youtube.svg',
            color: CustomColors.riverBed,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 12,
              height: 12,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
        ],
      ),
      activeIcon: SvgPicture.asset('assets/youtube.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Stack(
        children: [
          SvgPicture.asset(
            'assets/trolley.svg',
            color: CustomColors.riverBed,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 12,
              height: 12,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ),
            ),
          ),
        ],
      ),
      activeIcon: SvgPicture.asset('assets/trolley.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/users.svg',
        color: CustomColors.riverBed,
      ),
      activeIcon: SvgPicture.asset('assets/users.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/app.svg',
        color: CustomColors.riverBed,
      ),
      activeIcon: SvgPicture.asset('assets/app.svg'),
      label: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.clayEbonyDark,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: list,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
      appBar: PreferredSize(
        preferredSize: Size(getSize(context).width, 55),
        child: MyAppBar(),
      ),

      body: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Container(
          color: CustomColors.ebony,
          child: Column(
            // shrinkWrap: false,
            children: const [
              AddPost(),
              SizedBox(
                height: 20,
              ),
              Expanded(child: Menu()),
              // Text("Sample Text"),
              // AddPost(),
            ],
          ),
        ),
      ),

      // body: Container(
      //   width: getSize(context).width,
      //   height: getSize(context).height,
      //   color: CustomColors.ebony,
      //   child: NestedScrollView(
      //     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //       Size size = getSize(context);

      //       return <Widget>[
      //         SliverAppBar(
      //           backgroundColor: CustomColors.clayEbonyDark,
      //           // bottom: PreferredSize(
      //           //     preferredSize: Size(size.width, 120.0), child: AddPost()),

      //           floating: false,
      //           pinned: true,
      //           title: MyAppBar(),
      //         ),
      //       ];
      //     },
      //     body: MediaQuery.removePadding(
      //       removeTop: true,
      //       context: context,
      //       child: Container(
      //         // color: Colors.green,
      //         child: ListView(
      //           shrinkWrap: false,
      //           children: const [
      //             AddPost(),
      //             SizedBox(
      //               height: 20,
      //             ),
      //             Menu(),
      //             // Text("Sample Text"),
      //             // AddPost(),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
