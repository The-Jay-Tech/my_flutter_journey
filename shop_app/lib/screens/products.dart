class ShopProducts {
  final String img;
  final String title;
  final String price;
  ShopProducts(this.img, this.title, this.price);
}

List<ShopProducts> shopList = [
  ShopProducts('assets/headphone1.png', 'Airpods Max', '549'),
  ShopProducts('assets/headphone2.png', 'X-Seven Wicked', '725'),
  ShopProducts('assets/headphone3.png', 'Nia Audio', '250'),
];
