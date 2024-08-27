import 'package:flutter/material.dart';
import 'data_list.dart';

class Champion extends StatelessWidget {
  const Champion({super.key, required this.champions});
  final Championss champions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(champions.imageChmp),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${champions.name} | ${champions.title}',
                    style: TextStyle(color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Beaufort'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 3),
                      color: Colors.black,
                    ),
                    child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(champions.imageChmp3D),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(champions.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Beaufort'
                              ),
                            ),
                          ),
                          Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Release Date',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(champions.release,style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Last Changed',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(champions.lastUpdate,style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Class(es)',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(champions.imageClasses),
                                          Text(champions.classes,style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Legacy',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(champions.imageLegacy[0]),
                                              Text(champions.legacy[0],style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(champions.imageLegacy[1]),
                                              Text(champions.legacy[1],style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Position(s)',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(champions.imagePosition),
                                          Text(champions.position,style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Resource',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            champions.imageResource
                                          ),
                                          Text(champions.resource,style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Range Type',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(champions.imageRange),
                                          Text(champions.rangeType,style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Adaptive Type',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/adaptive_icon.png'),
                                          Text(champions.adaptiveType,style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Store Price',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    verticalAlignment: TableCellVerticalAlignment.middle,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset('assets/images/be_icon.png'),
                                              Text(champions.storePriceBE,style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset('assets/images/rp_icon.png'),
                                              Text(champions.storePriceRP,style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                    ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
