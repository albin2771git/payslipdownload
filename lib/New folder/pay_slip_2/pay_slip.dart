import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../pay_slip/service.dart';

class PaySlip extends ConsumerStatefulWidget {
  const PaySlip({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaySlipState();
}

class _PaySlipState extends ConsumerState<PaySlip> {
  @override
  Widget build(BuildContext context) {
    //final apidata = ref.watch(payslipProvider).value?.amountDetails;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("PaySlip"),
      ),
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Download")),
                )),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height * 0.60,
                color: Colors.white,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(children: [
                          Table(
                            border: TableBorder.all(),
                            children: [
                              const TableRow(children: [
                                Text('Pay Slip For The Month Of Febuary 2023',
                                    textAlign: TextAlign.center,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    header("EARNINGS"),
                                    header("AMOUNT")
                                  ]),
                                  TableRow(children: [
                                    inside("Basic Pay"),
                                    Amount("43600")
                                  ]),
                                  TableRow(children: [
                                    inside("DA"),
                                    Amount("16568")
                                  ]),
                                  TableRow(children: [
                                    inside("HRA"),
                                    Amount("11772")
                                  ]),
                                  TableRow(children: [
                                    inside("Transport Allowence"),
                                    Amount("3600")
                                  ]),
                                  TableRow(children: [
                                    inside("DA-Transport Allowence"),
                                    Amount("1368")
                                  ]),
                                ]),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                flex: 1,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    header("DEDUCTION"),
                                    header("AMOUNT")
                                  ]),
                                  TableRow(children: [
                                    inside("TDS (current)"),
                                    Amount("5000")
                                  ]),
                                  TableRow(children: [inside(""), Amount("")]),
                                  TableRow(children: [inside(""), Amount("")]),
                                  TableRow(children: [inside(""), Amount("")]),
                                  TableRow(children: [inside(" "), Amount("")]),
                                ]),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ])),
              ),
            ),
          ])),
    );
  }

  Widget header(String headerValue) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: Text(
        headerValue,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget inside(String insideValue) {
    return Text(
      insideValue,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
      textAlign: TextAlign.center,
    );
  }

  Widget Amount(String amountValue) {
    return Text(
      amountValue,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
      textAlign: TextAlign.center,
    );
  }
}
