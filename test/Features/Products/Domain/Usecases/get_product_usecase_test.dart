

import 'package:clean_architecture/Features/Products/Domain/Entities/product_entity.dart';
import 'package:clean_architecture/Features/Products/Domain/Entities/rating_entity.dart';
import 'package:clean_architecture/Features/Products/Domain/Repositories/product_repository.dart';
import 'package:clean_architecture/Features/Products/Domain/Usecases/get_product_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../../../test/Features/Products/Domain/Usecases/get_product_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ProductRepositoryInterface>()])

void main(){
  late MockProductRepositoryInterface mockProductRepositor;
  late GetProductUsecase getProductUsecase;

  setUp((){
    mockProductRepositor = MockProductRepositoryInterface();
    getProductUsecase = GetProductUsecase(repository: mockProductRepositor);
  });


  const int testProductId = 1;

  ProductEntity testProduct = ProductEntity(
    id: testProductId,
    name: 'Product 1',
    price: 100, 
    description: 'Description of product 1', 
    image: 'https://image.com/image.png', 
    rating: RatingEntity(count: 5, id: 1, productId: 1, rate: 4)
  );



  test('should get product from the repository', ()async{
    //arrange
    when(mockProductRepositor.getProduct(testProductId))
    .thenAnswer((_) async => Right(testProduct));
    //act
    final result = await getProductUsecase.execute(id: 1);
    //assert
    expect(result, Right(testProduct));
    verify(mockProductRepositor.getProduct(1));
    verifyNoMoreInteractions(mockProductRepositor.getProduct(testProductId));
  });
}