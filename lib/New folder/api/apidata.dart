import 'package:flutter/material.dart';
import 'package:payslipdownload/New%20folder/api/response.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../pay_slip_2/model.dart';

class ApiDataClass extends StatefulWidget {
  const ApiDataClass({super.key});

  @override
  State<ApiDataClass> createState() => _ApiDataClassState();
}

class _ApiDataClassState extends State<ApiDataClass> {
  List<Employee> employees = <Employee>[];
  List<Employeechat> employeesdata = <Employeechat>[];
  List<MainTable> maindata = <MainTable>[];
  late EmployeeDataSource employeeDataSource;
  late EmployeeDataSourcedatacha employeeDataSourcedata;
  late MainTableData mainTabledataSource;

//----------------------
  List<Map> datafetch = payslip;
  @override
  void initState() {
    super.initState();
    datafetch;
    employees = getEmployeeData();
    employeesdata = getEmployeeDeduction();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
    employeeDataSourcedata =
        EmployeeDataSourcedatacha(employeeDatach: employeesdata);
    mainTabledataSource = MainTableData(employeeDatach: maindata);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaySLip4'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Download")),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 490,
                height: 160,
                decoration: const BoxDecoration(),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 490,
                          height: 25,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(),
                                  left: BorderSide(),
                                  right: BorderSide())),
                          child: const Center(
                            child: Text(
                              "Pay Slip For The Month Of Febuary 2023",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 490,
                          height: 25,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(),
                                  left: BorderSide(),
                                  right: BorderSide())),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Emp Code : 119',
                                    textAlign: TextAlign.center),
                                Text('Department : Teaching',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 490,
                          height: 25,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(),
                                  left: BorderSide(),
                                  right: BorderSide())),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Name : ALAN GEORGE',
                                    textAlign: TextAlign.center),
                                Text('Account No : xxxxxxxxxxxx5187',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 490,
                          height: 25,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(),
                                  left: BorderSide(),
                                  right: BorderSide())),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Designation : PGT',
                                    textAlign: TextAlign.center),
                                Text('PF NO : xxxxx5187',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 490,
                          height: 25,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(),
                                  left: BorderSide(),
                                  right: BorderSide(),
                                  bottom: BorderSide())),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('No. of days : 28',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 210,
                color: Colors.grey.shade100,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SfDataGrid(
                      horizontalScrollPhysics:
                          const NeverScrollableScrollPhysics(),
                      defaultColumnWidth: 130,
                      shrinkWrapColumns: true,
                      shrinkWrapRows: true,
                      rowHeight: 25,
                      headerGridLinesVisibility: GridLinesVisibility.both,
                      gridLinesVisibility: GridLinesVisibility.both,
                      source: employeeDataSource,
                      columns: <GridColumn>[
                        GridColumn(
                            columnName: 'EARNINGS',
                            label: Container(
                                padding: const EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: const Text(
                                  'EARNINGS',
                                ))),
                        GridColumn(
                            columnName: 'AMOUNT',
                            label: Container(
                                padding: const EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: const Text('AMOUNT'))),
                      ],
                    ),
                    SfDataGrid(
                      horizontalScrollPhysics:
                          const NeverScrollableScrollPhysics(),
                      rowHeight: 25,
                      defaultColumnWidth: 130,
                      headerGridLinesVisibility: GridLinesVisibility.both,
                      gridLinesVisibility: GridLinesVisibility.both,
                      source: employeeDataSourcedata,
                      columns: <GridColumn>[
                        GridColumn(
                            columnName: 'DEDUCTION',
                            label: Container(
                                padding: const EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: const Text(
                                  'DEDUCTION',
                                ))),
                        GridColumn(
                            columnName: 'AMOUNT',
                            label: Container(
                                padding: const EdgeInsets.all(8.0),
                                alignment: Alignment.center,
                                child: const Text('AMOUNT'))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee(
        datafetch[0]["amountDetails"][1]["amountInDetail"][0]["amountLabel"]
            .toString(),
        datafetch[0]["amountDetails"][1]["amountInDetail"][0]["amount"]
            .toString(),
      ),
      Employee(
        "DA",
        '5000',
      ),
      Employee(
        "HRA",
        '2000',
      ),
      Employee(
        "Transport Allowence",
        '1500',
      ),
      Employee(
        "DA-Transport Allowence",
        '1200',
      ),
    ];
  }

  List<Employeechat> getEmployeeDeduction() {
    return [
      Employeechat("TDS(Current)", "5000"),
      Employeechat("", ""),
      Employeechat("", ""),
      Employeechat("", ""),
      Employeechat("", ""),
    ];
  }

  List<MainTable> MainTabledataP() {
    return [MainTable("23", "name")];
  }
}

class Employee {
  Employee(
    this.id,
    this.name,
  );

  final String id;

  final String name;
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Center(
          child: Text(
        e.value.toString(),
        style: const TextStyle(fontSize: 10),
      ));
    }).toList());
  }
}

class Employeechat {
  Employeechat(
    this.id,
    this.name,
  );

  final String id;

  final String name;
}

class EmployeeDataSourcedatacha extends DataGridSource {
  EmployeeDataSourcedatacha({required List<Employeechat> employeeDatach}) {
    _employeeData = employeeDatach
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Center(
        child: Text(
          e.value.toString(),
          style: const TextStyle(fontSize: 10),
        ),
      );
    }).toList());
  }
}

class MainTable {
  MainTable(
    this.id,
    this.name,
  );

  final String id;

  final String name;
}

class MainTableData extends DataGridSource {
  MainTableData({required List<MainTable> employeeDatach}) {
    _employeeData = employeeDatach
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Center(
        child: Text(
          e.value.toString(),
          style: const TextStyle(fontSize: 10),
        ),
      );
    }).toList());
  }
}
