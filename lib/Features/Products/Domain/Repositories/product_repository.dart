

import 'package:clean_architecture/Core/failures.dart';
import 'package:clean_architecture/Features/Products/Domain/Entities/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepositoryInterface {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, ProductEntity>> getProduct(int id);
  Future<Either<Failure, ProductEntity>> createProduct(ProductEntity product);
  Future<Either<Failure, ProductEntity>> updateProduct(ProductEntity product);
  Future<Either<Failure, void>> deleteProduct(int id);
}