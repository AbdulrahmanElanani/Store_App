class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromJosn(josnData) {
    return ProductModel(
        id: josnData['id'],
        title: josnData['title'],
        price: josnData['price'],
        description: josnData['description'],
        category: josnData['category'],
        image: josnData['image'],
        rating: josnData['rating']==null?null:RatingModel.fromJosn(josnData['rating'],),);
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJosn(josnData) {
    return RatingModel(rate: josnData['rate'], count: josnData['count']);
  }
}
