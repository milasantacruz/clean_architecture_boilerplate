

import 'package:equatable/equatable.dart';

class RatingEntity extends Equatable{
  final int id;
  final int productId;
  final int rate;
  final int count;

  RatingEntity({
    required this.id,
    required this.productId,
    required this.rate,
    required this.count
   
  });
  
  @override
  // TODO: implement props
  List<Object> get props => [id, productId, rate,count];
}