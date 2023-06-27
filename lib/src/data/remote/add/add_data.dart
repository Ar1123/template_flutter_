// ignore_for_file: avoid_shadowing_type_parameters

import 'package:template_clean_architecture/src/core/enums.dart';

import '../../../core/dto/generic_dto.dart';
import '../../../core/request_http.dart';

abstract class AddDataRemote<T> {
  Future<T> addDataRemote<T>({
    required EnumHttp enumHttp,
    required BodyParams data,
  });
}

final _httpRequest = RequestHTTP();

class AddDataRemoteImpl extends AddDataRemote {
 
  @override
  Future<T> addDataRemote<T>({
    required EnumHttp enumHttp,
    required BodyParams data,
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
