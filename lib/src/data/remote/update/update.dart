// ignore_for_file: avoid_shadowing_type_parameters

import 'package:template_clean_architecture/src/core/enums.dart';

import '../../../core/dto/generic_dto.dart';
import '../../../core/request_http.dart';

abstract class UpdateDataSource<T> {
  Future<T> update<T>({
     required String id,
    required BodyParams data,
    required EnumHttp enumHttp,
  });
}

final _httpRequest = RequestHTTP();

class UpdateDataSourceImpl extends UpdateDataSource {
 
  @override
  Future<T> update<T>({
   required String id,
    required BodyParams data,
    required EnumHttp enumHttp,
  }) async {
    T? result;

    switch (enumHttp) {
      case EnumHttp.peticion1:
        break;
      case EnumHttp.peticion2:
       
        break;
      
      default:
    }
    return result!;
  }
}
