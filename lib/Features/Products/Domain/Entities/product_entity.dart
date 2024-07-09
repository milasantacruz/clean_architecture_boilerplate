

import 'package:clean_architecture/Features/Products/Domain/Entities/rating_entity.dart';
import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable{
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final RatingEntity rating;

  const ProductEntity({
    required this.id, 
    required this.name, 
    required this.description, 
    required this.price, 
    required this.image,
    required this.rating
    
    });

  @override
  List<Object> get props => [id, name, description, price, image, rating];
}