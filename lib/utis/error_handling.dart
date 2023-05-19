import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

String complainError(e) {
  if (e is String) return e;

  if (e is DioError) {
    if (e.type == DioErrorType.connectTimeout) {
      return "Время соединения истекло";
    }
    if (e.type == DioErrorType.other) {
      return "Проверьте подключение к Интернету";
    }
    if (e.response != null) {
      return e.response!.data["message"] ?? "Проблема с сервисом";
    }
  }

  if (e is SocketException) return "Проверьте подключение к Интернету";

  if (e is FormatException) {
    return "Something went wrong";
  }

  if (e is PlatformException && e.message != null) {
    return e.message!;
  }

  if (e.toString().contains("50")) return "Сервис временно недоступен";

  return e.toString();
}
