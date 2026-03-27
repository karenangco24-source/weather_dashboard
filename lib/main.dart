import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLayout(),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: const Color(0xFFE6ECF5),
        child: Column(
          children: [
            Expanded(
              flex: 14,
              child: Center(
                child: Container(
                  width: screenWidth * 0.5,
                  alignment: Alignment.center,
                  child: const Text(
                    "Weather Dashboard",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 68,
              child: Center(
                child: Container(
                  width: screenWidth * 0.5,
                  child: Center(
                    child: Container(
                      width: 700,
                      height: 700,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6ECF5),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),

                      child: Column(
                        children: [
                          Expanded(
                            flex: 37,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Align(
                                    alignment: const Alignment(1, 1),
                                    child: Image.asset(
                                      'assets/cloudysunshine.png',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.only(
                                        left: 35, top: 30),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "25°C",
                                          style: TextStyle(
                                            fontSize: 70,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Text(
                                          "Cloudy with a chance of sunshine\nLondon, UK",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            height: 1.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            flex: 63,
                            child: Container(
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 380,
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(bottom: 4),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 199, 205, 217),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  padding: const EdgeInsets.all(20),

                                  child: GridView.count(
                                    padding:
                                        const EdgeInsets.only(top: 20),
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 1,

                                    children: [
                                      {"time": "10:00", "temp": "26°C", "icon": Icons.wb_sunny, "color": const Color.fromARGB(255, 255, 203, 59)},
                                      {"time": "11:00", "temp": "27°C", "icon": Icons.wb_sunny, "color": const Color.fromARGB(255, 255, 203, 59)},
                                      {"time": "13:00", "temp": "25°C", "icon": Icons.cloud_queue},
                                      {"time": "13:00", "temp": "24°C", "icon": Icons.cloud},
                                      {"time": "10:00", "temp": "25°C", "icon": Icons.wb_sunny, "color": const Color.fromARGB(255, 255, 203, 59)},
                                      {"time": "14:00", "temp": "24°C", "icon": Icons.cloudy_snowing},
                                      {"time": "14:00", "temp": "23°C", "icon": Icons.cloud},
                                      {"time": "15:00", "temp": "22°C", "icon": Icons.thunderstorm},
                                    ].map((data) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 4,
                                              offset: Offset(1, 1),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              data["time"]! as String,
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(255, 143, 143, 143),
                                              ),
                                            ),
                                            const SizedBox(height: 8),

                                            Icon(
                                              data["icon"] as IconData,
                                              size: 30,
                                              color: data["color"] as Color? ?? const Color.fromARGB(255, 161, 174, 180),
                                            ),

                                            const SizedBox(height: 8),
                                            Text(
                                              data["temp"]! as String,
                                              style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 17,
              child: Center(
                child: Container(
                  width: screenWidth * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      NavItem(
                        icon: Icons.home,
                        label: "Home",
                        isActive: true,
                      ),
                      SizedBox(width: 54),
                      NavItem(
                        icon: Icons.search,
                        label: "Search",
                      ),
                      SizedBox(width: 54),
                      NavItem(
                        icon: Icons.person,
                        label: "Profile",
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

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleIcon(
          icon: icon,
          isActive: isActive,
          size: 50,
          iconSize: 32,
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: isActive
                ? Colors.blue
                : const Color.fromARGB(255, 122, 134, 143),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final double size;
  final double iconSize;

  const CircleIcon({
    super.key,
    required this.icon,
    this.isActive = false,
    this.size = 50,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: isActive
            ? Colors.blue
            : const Color.fromARGB(255, 122, 134, 143),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: Colors.white,
      ),
    );
  }
} 