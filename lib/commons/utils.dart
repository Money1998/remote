import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:remote/constants/colors.dart';
import 'package:remote/constants/common_textstyles.dart';
import '../constants/strings.dart';
import 'appexception.dart';

FToast fToast = FToast();

RoundedRectangleBorder roundedRectangleBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: const BorderSide(color: lightGrey, width: 0.5));

BoxDecoration bottomBoxDecoration = BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.white, // Set the background color inside the circle
  border: Border.all(
    color: Colors.blue, // Set the border color of the circle
    width: 3.0, // Set the border width
  ),
);

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    case 201:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    case 204:
      dynamic responseJson = jsonDecode('{}');
      return responseJson;
    case 400:
      // throw BadRequestException(
      //     jsonDecode(response.body)['message'] ?? response.body.toString());
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    case 401:
    case 403:
      throw UnauthorisedException(
          'You are not authorised to view this. Please logout and login again.');
    case 500:
    default:
      throw FetchDataException('Error occurred while communication with server'
          ' with status code : ${response.statusCode}');
  }
}

Widget loading() => const Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.transparent,
        color: darkBlue,
      ),
    );

Widget noDataFoundWidget() => const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "noDataFound",
      ),
    );

Future<void> showToastMsg(
  BuildContext context, {
  String? msgDesc,
}) async {
  fToast.init(context);
  fToast.showToast(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0.2,
            offset: Offset(0.2, 0.2),
          ),
        ],
      ),
      child: Text(
        msgDesc ?? "",
        style: cbt20n,
      ),
    ),
    toastDuration: const Duration(seconds: 2),
  );
}

Widget toast(BuildContext context,
    {String? msgD, Color? backgroundColor, bool? isAlert}) {
  return FractionallySizedBox(
    widthFactor: 0.8,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0.2,
            offset: Offset(0.2, 0.2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isAlert == true ? Icons.privacy_tip : Icons.done,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(isAlert == true ? warning : success, style: cwt16B),
                    const SizedBox(
                      height: 05,
                    ),
                    Text(msgD ?? "", style: cwt16n),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              child: const Icon(Icons.close, color: Colors.white),
              onTap: () {
                fToast.removeCustomToast();
              },
            ),
          ),
        ],
      ),
    ),
  );
}

Future<void> QrMsgToast(
  BuildContext context, {
  String? msgDesc,
  bool? isAlert,
  Color? color,
}) async {
  fToast.init(context);
  fToast.showToast(
    child:
        toast(context, msgD: msgDesc, backgroundColor: color, isAlert: isAlert),
    gravity: ToastGravity.TOP,
    toastDuration: const Duration(seconds: 2),
  );
}

BoxDecoration boxDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      gradientColor4,
      gradientColor3,
      gradientColor2,
      gradientColor1,
    ],
  ),
);
