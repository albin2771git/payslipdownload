List<Map> payslip = [
  {
    "payslipId": 1102,
    "payslipName": "March 2023",
    "issuedDate": "2023-03-01T00:00:00",
    "GrossPayAmount": 28200.0,
    "DeductionsAmount": 1800.0,
    "NetPayAmount": 26400.0,
    "file": null,
    "amountDetails": [
      {
        "amountName": "Deductions",
        "amount": 1800.0,
        "amountInDetail": [
          {"amountLabel": "PF", "amount": 1800.0}
        ]
      },
      {
        "amountName": "Gross Pay",
        "amount": 28200.0,
        "amountInDetail": [
          {"amountLabel": "Basic Pay", "amount": 20000.0},
          {"amountLabel": "DA", "amount": 3400.0},
          {"amountLabel": "HRA", "amount": 4800.0}
        ]
      }
    ]
  }
];

List deductionsList = [
  {"amountLabel": "PF", "amount": 1800.0}
];

List earningsList = [
  {"amountLabel": "Basic Pay", "amount": 20000.0},
  {"amountLabel": "DA", "amount": 3400.0},
  {"amountLabel": "HRA", "amount": 4800.0}
];
