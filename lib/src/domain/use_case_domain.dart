 import 'package:dartz/dartz.dart';
import 'package:template_clean_architecture/src/domain/repository/repository_remote_domain.dart';

import '../../core/dto/generic_dto.dart';
import '../../core/enums.dart';
import '../../core/error/failures.dart';

class UseCaseDomain<T> {
  final RepositoryDomain _repositoryDomain;

  UseCaseDomain(this._repositoryDomain);
  //Definicion del metodo para añadir datos
  Future<Either<Failure, T>> addData<T>(
      {required BodyParams data, required EnumHttp enumHttp})=> _repositoryDomain.addData(data: data, enumHttp: enumHttp);

  //Defincion del metodo que obtiene todos los datos
  Future<Either<Failure, T>> geAlltData<T>(
      {required EnumHttp enumHttp, BodyParams? data})=> _repositoryDomain.geAlltData(enumHttp: enumHttp);

  //Defincion del metodo que obtiene data por ID
  Future<Either<Failure, T>> geDataById<T>(
      {required String id,
      required EnumHttp enumHttp,
      required BodyParams data}) => _repositoryDomain.geDataById(id: id, enumHttp: enumHttp, data: data);
  //Definicion del metoodo para actualizar data
  Future<Either<Failure, bool>> updateData(
      {required String id,
      required BodyParams data,
      required EnumHttp enumHttp})=> _repositoryDomain.updateData(id: id, data: data, enumHttp: enumHttp);

  //Definicion del metodo para borrar data
  Future<Either<Failure, bool>> delete(
      {required String id, BodyParams? data, required EnumHttp enumHttp})=> _repositoryDomain.delete(id: id, enumHttp: enumHttp);
}
