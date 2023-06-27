// ignore_for_file: avoid_shadowing_type_parameters

import 'package:dartz/dartz.dart';

import '../../core/dto/generic_dto.dart';
import '../../core/enums.dart';
import '../../core/error/failures.dart';

abstract class RepositoryDomain<T> {
  //Definicion del metodo para añadir datos
  Future<Either<Failure, T>> addData<T>(
      {required BodyParams data, required EnumHttp enumHttp});

  //Defincion del metodo que obtiene todos los datos
  Future<Either<Failure, T>> geAlltData<T>(
      {required EnumHttp enumHttp, BodyParams? data});

  //Defincion del metodo que obtiene data por ID
  Future<Either<Failure, T>> geDataById<T>(
      {required String id,
      required EnumHttp enumHttp,
      required BodyParams data});
  //Definicion del metoodo para actualizar data
  Future<Either<Failure, bool>> updateData(
      {required String id,
      required BodyParams data,
      required EnumHttp enumHttp});

  //Definicion del metodo para borrar data
  Future<Either<Failure, bool>> delete(
      {required String id, BodyParams? data, required EnumHttp enumHttp});
}
