class Sneakers {
  late String nama;
  late String harga;
  late String detail;
  late String material;
  late String imageType;
  late String type;
  late String imageBrand;
  late String brand;
  late List<String> imageUrl;

  Sneakers({
    required this.nama,
    required this.harga,
    required this.detail,
    required this.material,
    required this.imageType,
    required this.type,
    required this.imageBrand,
    required this.brand,
    required this.imageUrl,
  });
}

var SneakersList = [
  Sneakers(
    nama: 'Nike Zoom Flight 2 Gs',
    harga: 'Rp 1,199,000',
    detail:
        'Colorway : White\nArticle : (DB6708-100)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
        'Fabric Feels Lightweight, Breathable And Durable With Every Move.\nFoam Cushioning Feels Plush.\nPadded Around The Ankle Feels Comfortable.',
    imageType: 'image/icon_basketball.png',
    type: 'Basketball',
    imageBrand: 'image/nike_logo.png',
    brand: 'Nike',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/DB6708-100-1.jpg',
      'https://www.ncrsport.com/img/storage/large/DB6708-100-2.jpg',
      'https://www.ncrsport.com/img/storage/large/DB6708-100-3.jpg',
      'https://www.ncrsport.com/img/storage/large/DB6708-100-4.jpg'
    ],
  ),
  Sneakers(
    nama: 'Reebok Energylux 2',
    harga: 'Rp 699,000',
    detail:
        'Colorway : Core Black\nArticle : (S23822)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
        'Mesh Upper.\nDesigned For: Running.\nComfortable, Breathable Feel.\nTextured Eva Outsole Provides Grip Fuelfoam Midsole Provides The Optimal Balance Of Cushioning And Response.',
    imageType: 'image/icon_running.png',
    type: 'Running',
    imageBrand: 'image/reebok_logo.png',
    brand: 'Reebok',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/S23822-1.jpg',
      'https://www.ncrsport.com/img/storage/large/S23822-2.jpg',
      'https://www.ncrsport.com/img/storage/large/S23822-3.jpg',
      'https://www.ncrsport.com/img/storage/large/S23822-4.jpg'
    ],
  ),
  Sneakers(
    nama: 'Nike Phantom Venom Pro Fg',
    harga: 'Rp 2,279,000',
    detail:
        'Colorway : Yellow\nArticle : (AO8738-717)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
        'The Soft, Textured Upper Molds To The Foot For A Responsive Fit And High-speed Control.\nThe Asymmetric Vapor Traction Pattern Allows For Instant Acceleration And Quick Turns.\nThe Forefoot Grip Zone Provides Toe-off Traction For Extra Bursts Of Speed.',
    imageType: 'image/icon_football.png',
    type: 'Footbal',
    imageBrand: 'image/nike_logo.png',
    brand: 'Nike',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/AO8738-717-1.jpg',
      'https://www.ncrsport.com/img/storage/large/AO8738-717-2.jpg',
      'https://www.ncrsport.com/img/storage/large/AO8738-717-3.jpg',
      'https://www.ncrsport.com/img/storage/large/AO8738-717-4.jpg'
    ],
  ),
  Sneakers(
    nama: 'Under Armour Ua Jet \'21',
    harga: 'Rp 999,000',
    detail:
        'Colorway : Black\nArticle : (3024260-003)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
        'Combination Of Mesh & Perforated Leather Provides Lightweight Comfort, Durability & Breathability.\nCushioned Eva Midsole Delivers A Lightweight & Responsive Feel Underfoot.\nRubber Outsole Uses Herringbone Traction Pattern To Provide Maximum Grip.',
    imageType: 'image/icon_basketball.png',
    type: 'Basketball',
    imageBrand: 'image/under_armor_logo.png',
    brand: 'Under Armor',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/3024260-003-1.jpg',
      'https://www.ncrsport.com/img/storage/large/3024260-003-2.jpg',
      'https://www.ncrsport.com/img/storage/large/3024260-003-3.jpg',
      'https://www.ncrsport.com/img/storage/large/3024260-003-4.jpg',
    ],
  ),
  Sneakers(
    nama: 'Air Jordan Zoom 92',
    harga: 'Rp 2,279,000',
    detail:
        'Colorway : Game Royal\nArticle : (CK9183-004)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
        'Rubber Outsole With Herringbone Tread Pattern Wraps Partially Up The Toe For Traction And Durability.\nGrooves In The Outsole Promote Flexibility.\nExternal Rigid Overlay Along The Outer Toe Helps Contains Your Foot.',
    imageType: 'image/icon_basketball.png',
    type: 'Basketball',
    imageBrand: 'image/air_jordan_logo.png',
    brand: 'Air Jordan',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/CK9183-004-1.jpg',
      'https://www.ncrsport.com/img/storage/large/CK9183-004-2.jpg',
      'https://www.ncrsport.com/img/storage/large/CK9183-004-3.jpg',
      'https://www.ncrsport.com/img/storage/large/CK9183-004-4.jpg',
    ],
  ),
  Sneakers(
    nama: 'New Balance Kawhi 1 X Jolly Rancher',
    harga: 'Rp 2,999,000',
    detail:
    'Colorway : Multicolor\nArticle : (BBKLSMT1)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
    'The Newly Developed Full-length Performance Plate "nb First" And The "kinetic Stitch" Used In The Upper Reduce The Blurring Of The Foot, And Demonstrate Stability Even In Momentary Play Such As When Cutting In Or Jumping.',
    imageType: 'image/icon_basketball.png',
    type: 'Basketball',
    imageBrand: 'image/NB_logo.png',
    brand: 'New Balance',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/BBKLSMT1-1.jpg',
      'https://www.ncrsport.com/img/storage/large/BBKLSMT1-2.jpg',
      'https://www.ncrsport.com/img/storage/large/BBKLSMT1-3.jpg',
      'https://www.ncrsport.com/img/storage/large/BBKLSMT1-4.jpg',
    ],
  ),
  Sneakers(
    nama: 'Adidas Dame 8',
    harga: 'Rp 2,000,000',
    detail:
    'Colorway : Dash Grey\nArticle : (GY0379)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
    'Lace Closure.\nTextile Upper.\nCushioned Feel.\nTextile Lining.\nBounce Pro Midsole.\nRubber Outsole.',
    imageType: 'image/icon_basketball.png',
    type: 'Basketball',
    imageBrand: 'image/adidas_logo.png',
    brand: 'Adidas',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/GY0379-1.jpg',
      'https://www.ncrsport.com/img/storage/large/GY0379-2.jpg',
      'https://www.ncrsport.com/img/storage/large/GY0379-3.jpg',
      'https://www.ncrsport.com/img/storage/large/GY0379-4.jpg',
    ],
  ),
  Sneakers(
    nama: 'Nike Wmns React Infinity Run Flyknit 2',
    harga: 'Rp 2,389,000',
    detail:
    'Colorway : Black\nArticle : (CT2423-002)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
    'Increased Rubber On The Outsole Helps Deliver Traction And Durability.\nLess Material Between The Insole And Midsole Means You\'re Closer To The Foam.\nAn Advanced Flyknit Upper Provides Breathability.',
    imageType: 'image/icon_running.png',
    type: 'Running',
    imageBrand: 'image/nike_logo.png',
    brand: 'Nike',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/CT2423-002-1.jpg',
      'https://www.ncrsport.com/img/storage/large/CT2423-002-2.jpg',
      'https://www.ncrsport.com/img/storage/large/CT2423-002-3.jpg',
      'https://www.ncrsport.com/img/storage/large/CT2423-002-4.jpg',
    ],
  ),
  Sneakers(
    nama: 'Adidas Nemeziz .3 Indoor Cleats',
    harga: 'Rp 899,000',
    detail:
    'Colorway : Energy Ink\nArticle : (EH0519)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
    'Snug Fit For Stability.\nLace Closure.\nMid-cut Textile Upper.\nIndoor Soccer Shoes.',
    imageType: 'image/icon_football.png',
    type: 'Football',
    imageBrand: 'image/adidas_logo.png',
    brand: 'Adidas',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/EH0519-1.jpg',
      'https://www.ncrsport.com/img/storage/large/EH0519-2.jpg',
      'https://www.ncrsport.com/img/storage/large/EH0519-3.jpg',
      'https://www.ncrsport.com/img/storage/large/EH0519-4.jpg',
    ],
  ),
  Sneakers(
    nama: 'Nike Vapor 12 Elite Fg',
    harga: 'Rp 1,699,000',
    detail:
    'Colorway : Grey\nArticle : (AH7380-060)\nBrand New in Box (BNIB) / Tag (BNWT)',
    material:
    'Flyknit And Synthetic Upper.',
    imageType: 'image/icon_football.png',
    type: 'Football',
    imageBrand: 'image/nike_logo.png',
    brand: 'Nike',
    imageUrl: [
      'https://www.ncrsport.com/img/storage/large/AH7380-060-1.jpg',
      'https://www.ncrsport.com/img/storage/large/AH7380-060-2.jpg',
      'https://www.ncrsport.com/img/storage/large/AH7380-060-3.jpg',
      'https://www.ncrsport.com/img/storage/large/AH7380-060-4.jpg',
    ],
  ),
];
