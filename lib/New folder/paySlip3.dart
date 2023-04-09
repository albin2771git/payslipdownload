import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaySlip3 extends ConsumerStatefulWidget {
  const PaySlip3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PaySlip3State();
}

class _PaySlip3State extends ConsumerState<PaySlip3> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
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
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Emp Code : 119',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text('Department : Teaching',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
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
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                      Text('Account No : xxxxxxxxxxxx5187',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
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
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                      Text('PF NO : xxxxx5187',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
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
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
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
                                child: DataTable(
                                    // Datatable widget that have the property columns and rows.
                                    columns: const [
                                      // Set the name of the column
                                      DataColumn(
                                        label: Text('EARNINGS'),
                                      ),
                                      DataColumn(
                                        label: Text('AMOUNT'),
                                      ),
                                    ],
                                    rows: const [
                                      // Set the values to the columns
                                      DataRow(cells: [
                                        DataCell(Text("Basic Pay")),
                                        DataCell(Text("10000")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text("DA")),
                                        DataCell(Text("1000")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text("HRA")),
                                        DataCell(Text("8000")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text("Transport Allowence")),
                                        DataCell(Text("4000")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(
                                            Text("DA-Transport Allowence")),
                                        DataCell(Text("2000")),
                                      ]),
                                    ]),
                              ),
                              Flexible(
                                flex: 1,
                                child: DataTable(
                                    // Datatable widget that have the property columns and rows.
                                    columns: const [
                                      // Set the name of the column
                                      DataColumn(
                                        label: Text('EARNINGS'),
                                      ),
                                      DataColumn(
                                        label: Text('AMOUNT'),
                                      ),
                                    ],
                                    rows: const [
                                      // Set the values to the columns
                                      DataRow(cells: [
                                        DataCell(Text("TDS(Current)")),
                                        DataCell(Text("5000")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text("")),
                                        DataCell(Text("")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text("")),
                                        DataCell(Text("")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text(" ")),
                                        DataCell(Text("")),
                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text(" ")),
                                        DataCell(Text("")),
                                      ]),
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
}
