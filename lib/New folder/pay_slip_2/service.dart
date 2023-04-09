import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import 'model.dart';

final payslipProvider = FutureProvider<ApiModel>((ref) async {
  String endpoint =
      "https://qa.edisapp.net//api/v2/staff/Staff/getPaySlipDetails?academicYearId=9&payslipId=1104";

  Response res = await get(Uri.parse(endpoint));

  final result = jsonDecode(res.body.toString());

  return ApiModel.fromJson(result);
});
