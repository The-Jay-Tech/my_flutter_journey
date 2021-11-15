import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/models/desserts.dart';

class DessertsHome extends StatefulWidget {
  const DessertsHome({Key? key}) : super(key: key);

  @override
  _DessertsHomeState createState() => _DessertsHomeState();
}

class _DessertsHomeState extends State<DessertsHome>
    with TickerProviderStateMixin {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  // User? _user = FirebaseAuth.instance.currentUser;
  TabController? _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController!.dispose();
  }

  int currentSelect = 0;
  final List<Widget> _tabList = [
    const Center(),
    const Center(child: Text('Soon to be available')),
    const Center(),
    const Center(),
  ];
  final categoriesList = [
    'Popular',
    'ice cream',
    'Buttercake',
    'Recent',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_literals_to_create_immutables
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Let's",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.orange,
                    )
                  ],
                ),
                Text(
                  'Eat Dessert Food',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Material(
                  elevation: 2,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // ignore: prefer_const_constructors
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: 'Search...',
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Text('View all'),
                        const Icon(Icons.arrow_forward_ios, size: 10),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: _buildDesserts(),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentSelect = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: currentSelect == index
                                          ? Color(0xFFC08E31)
                                          : Colors.transparent,
                                      width: 2),
                                ),
                              ),
                              child: Text(
                                categoriesList[index],
                                style: GoogleFonts.lora(
                                    color: currentSelect == index
                                        ? Color(0xFFB88F8E)
                                        : Color(0xFFB88F8E),
                                    fontSize: currentSelect == index ? 22 : 22,
                                    fontWeight: currentSelect == index
                                        ? FontWeight.bold
                                        : FontWeight.w700),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, index) => SizedBox(width: 15),
                        itemCount: categoriesList.length),
                  ),
                ),
                _tabList[currentSelect],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDesserts() {
    return ListView.builder(
        itemCount: dessertThings.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            width: 210,
            padding: const EdgeInsets.all(3),
            // margin: const EdgeInsets.only(left: 4, right: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/cake1.png'),
                    ),
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,

                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        color: Color(0xFFB88F8E),
                      ),
                      // ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text('${tourData[index].city}'),
                //       Text('${tourData[index].country}'),
                //     ],
                //   ),
                // )
              ],
            ),
          );
        });
  }
}
