



class Cars{
  String make;
  String modelName;
  String price;
  String bodyType;
  String safetyRating;
  String image;
  List<String> fuelType;
  String engine;
  String maxPower;
  String maxTorque;
  String mileage;
  List<String> sliderImages;

  Cars(
      this.make,
      this.modelName,
      this.price,
      this.bodyType,
      this.safetyRating,
      this.image,
      this.fuelType,
      this.engine,
      this.maxPower,
      this.maxTorque,
      this.mileage,
      this.sliderImages);
}

class Categories{
  String image;
  String textCategories;
  Categories(this.image, this.textCategories);
}

class BrandDetail{
  String image;
  String textBrand;
  BrandDetail(this.image, this.textBrand);
}