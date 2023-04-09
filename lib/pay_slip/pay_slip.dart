import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart';

import '../New folder/api/model.dart';

class PaySlip2 extends StatefulWidget {
  const PaySlip2({super.key});

  @override
  State<PaySlip2> createState() => _PaySlipState();
}

class _PaySlipState extends State<PaySlip2> {
  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }

  Future getdata() async {
    String endpoint =
        "https://qa.edisapp.net//api/v2/staff/Staff/getPaySlipDetails?academicYearId=9&payslipId=1104";

    Response res = await get(Uri.parse(endpoint));
    if (res.statusCode == 200) {
      final result = jsonDecode(res.body.toString());

      return ApiModel.fromJson(result);
    } else {
      throw Exception(res.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("PaySlip"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: [
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Download")),
              )),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                height: size.height * 0.60,
                color: Colors.grey.shade100,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Table(
                              border: TableBorder.all(),
                              children: [
                                const TableRow(children: [
                                  Text('Pay Slip For The Month Of Febuary 2023',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Emp Code : 119',
                                            textAlign: TextAlign.center),
                                        Text('Department : Teaching',
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Name : ALAN GEORGE',
                                            textAlign: TextAlign.center),
                                        Text('Account No : xxxxxxxxxxxx5187',
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text('Designation : PGT',
                                            textAlign: TextAlign.center),
                                        Text('PF NO : xxxxx5187',
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('No. of days : 28',
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Table(
                              border: TableBorder.all(),
                              children: const [
                                TableRow(children: [
                                  Text('EARNING',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text('AMOUNT',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text('DEDUCTION',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text('AMOUNT',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                                TableRow(children: [
                                  Text('Basic Pay',
                                      textAlign: TextAlign.center),
                                  Text('43000', textAlign: TextAlign.center),
                                  Text('TDS(Current)',
                                      textAlign: TextAlign.center),
                                  Text('5000', textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text('DA', textAlign: TextAlign.center),
                                  Text('16568', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text('HRA', textAlign: TextAlign.center),
                                  Text('16568', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text('Transport Allowence',
                                      textAlign: TextAlign.center),
                                  Text('16568', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text('Da-Transport ALLowence',
                                      textAlign: TextAlign.center),
                                  Text('16568', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                  Text('', textAlign: TextAlign.center),
                                ]),
                                TableRow(children: [
                                  Text('GROSS PAY',
                                      textAlign: TextAlign.center),
                                  Text('76908', textAlign: TextAlign.center),
                                  Text('TOT.DED', textAlign: TextAlign.center),
                                  Text('5000', textAlign: TextAlign.center),
                                ]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ])),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
