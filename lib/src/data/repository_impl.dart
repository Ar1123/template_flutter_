// ignore_for_file: avoid_shadowing_type_parameters


import 'package:dartz/dartz.dart';


import 'package:template_clean_architecture/src/core/enums.dart';
import 'package:template_clean_architecture/src/data/remote/add/add_data.dart';
import 'package:template_clean_architecture/src/data/remote/delete/delete.dart';
import 'package:template_clean_architecture/src/data/remote/get/get_all.dart';
import 'package:template_clean_architecture/src/data/remote/get_one/get_one.dart';
import 'package:template_clean_architecture/src/data/remote/update/update.dart';
import 'package:template_clean_architecture/src/domain/repository/repository_remote_domain.dart';

import '../core/dto/generic_dto.dart';
import '../core/error/failures.dart';
import '../core/future_response.dart';

class RemoteRepositoryImple<T> implements RepositoryDomain {
  final GetAllRemote getAllRemote;
  final GetOneRemote getOneRemote;
  final AddDataRemote addDataRemote;
  final DeleteDataSourceImpl deleteRemote;
  final UpdateDataSource updateDataRemote;

  RemoteRepositoryImple(
    this.getAllRemote,
    this.getOneRemote,
    this.addDataRemote,
    this.deleteRemote,
    this.updateDataRemote,
  );

  @override
  Future<Either<Failure, T>> addData<T>({
    required BodyParams data,
    required EnumHttp enumHttp,
  }) {
    return response(() async {
      return await addDataRemote.addDataRemote(
        data: data,
        enumHttp: enumHttp,
      );
    });
  }

  @override
  Future<Either<Failure, bool>> delete({
    required String id,
    BodyParams? data,
    required EnumHttp enumHttp,
  }) {
    return response(() async {
      return await deleteRemote.delete(
        id: id,
        data: data!,
        enumHttp: enumHttp,
      );
    });
  }

  @override
  Future<Either<Failure, T>> geAlltData<T>({
    required EnumHttp enumHttp,
    BodyParams? data,
  }) {
    return response(() async {
      return await getAllRemote.getAll(
        data: data!,
        enumHttp: enumHttp,
      );
    });
  }

  @override
  Future<Either<Failure, T>> geDataById<T>({
    required String id,
    required EnumHttp enumHttp,
    required BodyParams data,
  }) {
    return response(() async {
      return await getOneRemote.getOne(
        id: id,
        data: data,
        enumHttp: enumHttp,
      );
    });
  }

  @override
  Future<Either<Failure, bool>> updateData({
    required String id,
    required BodyParams data,
    required EnumHttp enumHttp,
  }) {
    return response(() async {
      return await updateDataRemote.update(
        id: id,
        data: data,
        enumHttp: enumHttp,
      );
    });
  }
}
