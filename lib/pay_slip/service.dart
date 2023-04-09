import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../New folder/api/model.dart';

final payslipProvider = FutureProvider<ApiModel>((ref) async {
  String endpoint =
      "https://qa.edisapp.net//api/v2/Staff/getPaySlipDetails?academicYearId=9&payslipId=1104";

  Response res = await get(Uri.parse(endpoint));
  print("result${res.body}");
  final result = jsonDecode(res.body);
  print("result${result}");
  return ApiModel.fromJson(result);
});
