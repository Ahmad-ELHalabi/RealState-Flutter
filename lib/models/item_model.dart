class Item{
  String? title;
  String? category;
  String? thumb_url;
  String? location;
  double? price;

  Item(this.title,this.category,this.location,this.price,this.thumb_url);

  static List<Item> recommendation = [
    Item("Modern house for Renting","House","Beirut, Lebanon",2500,"https://res.cloudinary.com/brickandbatten/image/upload/c_scale,w_464,h_299,dpr_2/f_auto,q_auto/v1659367745/wordpress_assets/Contemporary-House-57123-5-2_43096e0838.jpg?_i=AA"),
    Item("Big Villa","Villa","Beirut, Lebanon",3000,"https://images.squarespace-cdn.com/content/v1/5a71b25e7131a5bc3c782335/1567690462471-TBWWZW00WT5A9DRELMLN/Big+Chill.jpg?format=2500w"),
    Item("Small House","House","Akkar, Lebanon",1500,"https://res.cloudinary.com/brickandbatten/images/f_auto,q_auto/v1675439464/wordpress_assets/SmallHouseExteriors-social-share-B-LOGO/SmallHouseExteriors-social-share-B-LOGO.jpg?_i=AA"),
    Item("Luxios Apartement","Apartement","Tripoli, Lebanon",800,"https://cf.bstatic.com/xdata/images/hotel/max1024x768/328089693.jpg?k=45190f809a6fc544d4aec88ca5c46999b16eed2c956efb73c2f9683866aafb54&o=&hp=1")

  ];

  static List<Item> nearby = [
    Item("Student Apartement","Apartement","Tripoli, Lebanon",150,"https://res.cloudinary.com/brickandbatten/image/upload/c_scale,w_464,h_299,dpr_2/f_auto,q_auto/v1659367745/wordpress_assets/Contemporary-House-57123-5-2_43096e0838.jpg?_i=AA"),
    Item("Small Villa","Villa","Shouf, Lebanon",300,"https://images.squarespace-cdn.com/content/v1/5a71b25e7131a5bc3c782335/1567690462471-TBWWZW00WT5A9DRELMLN/Big+Chill.jpg?format=2500w"),
    Item("Family House","House","Saida, Lebanon",200,"https://res.cloudinary.com/brickandbatten/images/f_auto,q_auto/v1675439464/wordpress_assets/SmallHouseExteriors-social-share-B-LOGO/SmallHouseExteriors-social-share-B-LOGO.jpg?_i=AA"),
    Item("Province House","House","Beirut, Lebanon",100,"https://cf.bstatic.com/xdata/images/hotel/max1024x768/328089693.jpg?k=45190f809a6fc544d4aec88ca5c46999b16eed2c956efb73c2f9683866aafb54&o=&hp=1")

  ];
}