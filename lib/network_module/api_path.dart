enum APIPath {
  register,
  login,
  validate_email,
  new_products,
  best_selling,
  most_viewed,
}

class APIPathHelper {
  static String getValue(APIPath path) {
    switch (path) {
      case APIPath.register:
        return "customers";
      case APIPath.login:
        return "integration/customer/token";
      case APIPath.validate_email:
        return "customers/isEmailAvailable";
      case APIPath.new_products:
        return "efn/products/new/";
      case APIPath.best_selling:
        return "efn/products/best-seller/";
      case APIPath.most_viewed:
        return "efn/products/most-viewed/";
      default:
        return "";
    }
  }
}
