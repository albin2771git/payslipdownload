import 'package:flutter/material.dart';
import 'package:payslipdownload/pay_slip/pay_slip.dart';

import 'New folder/api table/api_table.dart';
import 'New folder/api/apidata.dart';
import 'New folder/package_table.dart';
import 'New folder/paySlip3.dart';
import 'New folder/pay_slip_2/pay_slip.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PaySlip"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaySlip()));
                },
                child: Text("payslip")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaySlip2()));
                },
                child: Text("hardCode")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaySlip3()));
                },
                child: Text("paySlip3")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                child: const Text("package")),
                  ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ApiDataClass()));
                },
                child: const Text("api data")),
                 ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ApiTable()));
                },
                child: const Text("api data with table"))
          ],
        ),
      ),
    );
  }
}
