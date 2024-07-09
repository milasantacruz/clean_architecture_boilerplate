

import 'package:clean_architecture/Core/failures.dart';
import 'package:clean_architecture/Features/Products/Domain/Entities/product_entity.dart';
import 'package:clean_architecture/Features/Products/Domain/Repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class GetProductUsecase{
  final ProductRepositoryInterface repository;

  GetProductUsecase({
    required this.repository
  });

  Future <Either<Failure, ProductEntity>> execute({required int id})async{
    return await repository.getProduct(id);
  }
}