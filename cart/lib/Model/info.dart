class Model {
  String? img;
  String? name;
  int? price;
  String? rating;
  String? distance;
  int order = 1;
  int? totalPrice;
  Model(
      {this.img,
      this.name,
      this.price,
      this.rating,
      this.distance,
      this.totalPrice});
}

List<Model> detals = [
  Model(
    img: 'images/rice.png',
    name: 'Strimp Fried Rice',
    price: 250,
    rating: '4.8',
    distance: '400m',
  ),
  Model(
    img: 'images/ramen.png',
    name: 'Hakata Ramen',
    price: 400,
    rating: '2.9',
    distance: '800m',
  ),
  Model(
    img: 'images/ramen.png',
    name: 'Fullset Ramen',
    price: 850,
    rating: '4.1',
    distance: '350m',
  ),
  Model(
    img: 'images/rice.png',
    name: 'House Special Ramen',
    price: 550,
    rating: '3.9',
    distance: '1km',
  ),
  Model(
    img: 'images/ramen.png',
    name: 'Fullset Ramen',
    price: 850,
    rating: '4.1',
    distance: '350m',
  ),
  Model(
    img: 'images/rice.png',
    name: 'House Special Ramen',
    price: 550,
    rating: '3.9',
    distance: '1km',
  ),
];
