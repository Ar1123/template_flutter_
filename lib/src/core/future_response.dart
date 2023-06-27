// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';

import 'error/execptions.dart';
import 'error/failures.dart';

Future<Either<Failure, T>> response<T>(Function() funtion) async {
  try {
    final result = await funtion();
    return Right(result);
  } on ServerExceptions catch (e) {
    return Left(ServerFailure(message: e.message));
  }
}

Future<Either<Failure, T>> responseCache<T>(Function() funtion) async {
  try {
    final result = await funtion();
    return Right(result);
  } on CacheExceptions {
    return const Left(CacheFailure());
  }
}
