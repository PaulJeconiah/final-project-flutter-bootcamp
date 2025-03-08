import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:project_akhir_flutter_bootcamp/app/data/user_model/user_model.dart';

class UserService {
  final dio = Dio();
  static const host =
      "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

  Future<List<UserModel>> fetchDataUser({
    int limit = 10,
    int offset = 0,
  }) async {
    try {
      final response = await dio.get(host);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.data;

        final paginatedData = data.skip(offset).take(limit).toList();

        List<UserModel> users =
            paginatedData.map((json) => UserModel.fromJson(json)).toList();

        return users;
      } else {
        throw Exception(
          "Failed to load data, status code: ${response.statusCode}",
        );
      }
    } catch (e) {
      print("Error fetching data: $e");
      return [];
    }
  }
}
