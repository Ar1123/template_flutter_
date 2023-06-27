// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import 'error/execptions.dart';

/**
 * Clase generica para las consultas HTTP
 */

class RequestHTTP {
  final dio = Dio();

/**
 * Método generico para las consultas de tipo GET, no recibe paramateros
 */
  Future<T> getAll<T>(
      {required String url, Map<String, dynamic>? headers}) async {
    try {
      final result = await dio.get(url).timeout(const Duration(seconds: 30),
          onTimeout: () async {
        throw Exception();
      });

      return result.data;
    } on DioException catch (e) {
      throw ServerExceptions();
    } catch (e) {
      throw ServerExceptions();
    }
  }

/**
 * Método generico para las consultas de tipo GET con paramateros
 */
  Future<T> getByParams<T>(
      {required String url,
      Map<String, dynamic>? paramns,
      Map<String, dynamic>? headers}) async {
    try {
      final result = await dio
          .get(url, queryParameters: paramns)
          .timeout(const Duration(seconds: 30), onTimeout: () async {
        throw Exception();
      });
      return result.data;
    } on DioException catch (e) {
      throw ServerExceptions();
    } catch (e) {
      throw ServerExceptions();
    }
  }

/**
 * Método generico para las consultas de tipo POST, no recibe paramateros
 */
  Future<T> post<T>(
      {required String url,
      required T body,
      Map<String, dynamic>? headers}) async {
    String message = "";
    try {
      final response = await dio.post(url, data: body).timeout(
        const Duration(seconds: 30),
        onTimeout: () async {
          throw Exception();
        },
      );

      return response.data;
    } on DioException catch (e) {
      throw ServerExceptions(message: "$e");
    } catch (e) {
      throw ServerExceptions(message: message);
    }
  }

/**
 * Método generico para las consultas de tipo PATH
 */
  Future<T> path<T>(
      {required String url,
      required T data,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await dio
          .patch(url, data: data)
          .timeout(const Duration(seconds: 30), onTimeout: () async {
        throw Exception();
      });
      return response.data as T;
    } on DioException catch (e) {
      throw ServerExceptions(message: "");
    } catch (e) {
      throw ServerExceptions();
    }
  }

  Future<T> delete<T>({required String url}) async {
    try {
      final response = await dio.delete(url).timeout(
        const Duration(seconds: 30),
        onTimeout: () async {
          throw Exception();
        },
      );
      return response.data;
    } on DioException catch (e) {
      throw ServerExceptions(message: "$e");
    } catch (e) {
      throw ServerExceptions();
    }
  }
}
