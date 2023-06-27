// ignore_for_file: avoid_shadowing_type_parameters

import 'package:template_clean_architecture/src/core/enums.dart';

import '../../../core/dto/generic_dto.dart';
import '../../../core/request_http.dart';

RequestHTTP _http = RequestHTTP();

abstract class GetAllRemote<T> {
  Future<T> getAll<T>({
    required EnumHttp enumHttp,
    required BodyParams data,
  });
}

class GetAllRemoteImpl extends GetAllRemote {
  @override
  Future<T> getAll<T>({required EnumHttp enumHttp, required BodyParams data})async {
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
