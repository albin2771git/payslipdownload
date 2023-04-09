// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

List<ApiModel> apiModelFromJson(String str) => List<ApiModel>.from(json.decode(str).map((x) => ApiModel.fromJson(x)));

String apiModelToJson(List<ApiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiModel {
    ApiModel({
        this.payslipId,
        this.payslipName,
        this.issuedDate,
        this.grossPayAmount,
        this.deductionsAmount,
        this.netPayAmount,
        this.file,
        this.amountDetails,
    });

    int? payslipId;
    String? payslipName;
    DateTime? issuedDate;
    int? grossPayAmount;
    int? deductionsAmount;
    int? netPayAmount;
    dynamic file;
    List<AmountDetail>? amountDetails;

    factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        payslipId: json["payslipId"],
        payslipName: json["payslipName"],
        issuedDate: json["issuedDate"] == null ? null : DateTime.parse(json["issuedDate"]),
        grossPayAmount: json["GrossPayAmount"],
        deductionsAmount: json["DeductionsAmount"],
        netPayAmount: json["NetPayAmount"],
        file: json["file"],
        amountDetails: json["amountDetails"] == null ? [] : List<AmountDetail>.from(json["amountDetails"]!.map((x) => AmountDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "payslipId": payslipId,
        "payslipName": payslipName,
        "issuedDate": issuedDate?.toIso8601String(),
        "GrossPayAmount": grossPayAmount,
        "DeductionsAmount": deductionsAmount,
        "NetPayAmount": netPayAmount,
        "file": file,
        "amountDetails": amountDetails == null ? [] : List<dynamic>.from(amountDetails!.map((x) => x.toJson())),
    };
}

class AmountDetail {
    AmountDetail({
        this.amountName,
        this.amount,
        this.amountInDetail,
    });

    String? amountName;
    int? amount;
    List<AmountInDetail>? amountInDetail;

    factory AmountDetail.fromJson(Map<String, dynamic> json) => AmountDetail(
        amountName: json["amountName"],
        amount: json["amount"],
        amountInDetail: json["amountInDetail"] == null ? [] : List<AmountInDetail>.from(json["amountInDetail"]!.map((x) => AmountInDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "amountName": amountName,
        "amount": amount,
        "amountInDetail": amountInDetail == null ? [] : List<dynamic>.from(amountInDetail!.map((x) => x.toJson())),
    };
}

class AmountInDetail {
    AmountInDetail({
        this.amountLabel,
        this.amount,
    });

    String? amountLabel;
    int? amount;

    factory AmountInDetail.fromJson(Map<String, dynamic> json) => AmountInDetail(
        amountLabel: json["amountLabel"],
        amount: json["amount"],
    );

    Map<String, dynamic> toJson() => {
        "amountLabel": amountLabel,
        "amount": amount,
    };
}
