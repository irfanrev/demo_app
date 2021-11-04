import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              color: Colors.indigo,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: ListTile(
                  title: Text(
                    'dsf',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'dsf',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                expand: true,
                minChildSize: 0.5,
                maxChildSize: 0.9,
                initialChildSize: 0.9,
                builder: (context, snapshot) {
                  return Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: ListView(
                        children: [
                          Text(
                            'dsfasd',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Deadline : ',
                                  style: GoogleFonts.poppins(),
                                ),
                                Text(
                                  'sdfasd',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'sdfasf',
                              style: GoogleFonts.poppins(),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
