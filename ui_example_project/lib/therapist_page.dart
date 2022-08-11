import 'package:flutter/material.dart';

class TherapistPage extends StatefulWidget {
  const TherapistPage({Key? key}) : super(key: key);

  @override
  State<TherapistPage> createState() => _TherapistPageState();
}

class _TherapistPageState extends State<TherapistPage> {
  int selectedItem = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.mediation_outlined,
                ),
                label: "Meditation"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined), label: "Books"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.follow_the_signs_rounded,
                ),
                label: "Therapy"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: "Jenny",
            ),
          ],
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(color: Colors.lightBlue),
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedItem,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              height: 250,
              color: const Color.fromRGBO(192, 216, 192, 1),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 40, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          color: Colors.blueGrey,
                          Icons.menu_outlined,
                          size: 40,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0.0, top: 10),
                            child: Image.asset(
                              "assets/mediation.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "Your therapist",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      right: 15,
                      top: 15,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Icon(
                            color: Colors.blueGrey,
                            Icons.grade_outlined,
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                height: 30,
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Expanded(
                                          flex: 4,
                                          child: Text("Search a therapist")),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Expanded(flex: 1, child: Icon(Icons.search))
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 13,
                  right: 13,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          left: 8,
                          right: 8,
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "Popular",
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(flex: 4, child: Text("Availability")),
                    const Expanded(flex: 3, child: Text("Rating")),
                    const Expanded(flex: 3, child: Text("Price"))
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                ),
                                height: 120,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 100,
                                        width: 90,
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            "assets/person1.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4.0,
                                            left: 8,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "John Doe",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 150,
                                              ),
                                              Icon(Icons
                                                  .favorite_border_outlined)
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8, right: 8),
                                          child: Row(
                                            children: const [
                                              Text("Clinical Psychologist",
                                                  style: TextStyle(
                                                      color: Colors.grey))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                  "212 reviews",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.0),
                                                child: Text(
                                                  "\$40",
                                                  style: TextStyle(
                                                      color: Colors.amberAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_on_outlined),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                    "United States of America"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                ),
                                height: 120,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 90,
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            "assets/person4.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4.0,
                                            left: 8,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Janny Doe",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 142,
                                              ),
                                              Icon(Icons
                                                  .favorite_border_outlined)
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8, right: 8),
                                          child: Row(
                                            children: const [
                                              Text("Clinical Psychologist",
                                                  style: TextStyle(
                                                      color: Colors.grey))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text("196 reviews",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.0),
                                                child: Text(
                                                  "\$24",
                                                  style: TextStyle(
                                                      color: Colors.amberAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_on_outlined),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                    "United States of America"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                ),
                                height: 120,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 90,
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            "assets/person3.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4.0,
                                            left: 8,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Chris Wellman",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 110,
                                              ),
                                              Icon(Icons
                                                  .favorite_border_outlined)
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8, right: 8),
                                          child: Row(
                                            children: const [
                                              Text("Clinical Psychologist",
                                                  style: TextStyle(
                                                      color: Colors.grey))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text("99 reviews",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.0),
                                                child: Text(
                                                  "\$56",
                                                  style: TextStyle(
                                                      color: Colors.amberAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_on_outlined),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                    "United States of America"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                ),
                                height: 120,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 90,
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            "assets/person2.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4.0,
                                            left: 8,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Dave Acrossa",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 119,
                                              ),
                                              Icon(Icons
                                                  .favorite_border_outlined)
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8, right: 8),
                                          child: Row(
                                            children: const [
                                              Text("Clinical Psychologist",
                                                  style: TextStyle(
                                                      color: Colors.grey))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text("254 reviews",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.0),
                                                child: Text(
                                                  "\$18",
                                                  style: TextStyle(
                                                      color: Colors.amberAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_on_outlined),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                    "United States of America"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                ),
                                height: 120,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 90,
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            "assets/person5.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4.0,
                                            left: 8,
                                            right: 8,
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Stealla Pearson",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 110,
                                              ),
                                              Icon(Icons
                                                  .favorite_border_outlined)
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, left: 8, right: 8),
                                          child: Row(
                                            children: const [
                                              Text("Clinical Psychologist",
                                                  style: TextStyle(
                                                      color: Colors.grey))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amberAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text("129 reviews",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.0),
                                                child: Text(
                                                  "\$28",
                                                  style: TextStyle(
                                                      color: Colors.amberAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: const [
                                              Icon(Icons.location_on_outlined),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                    "United States of America"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
