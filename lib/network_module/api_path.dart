enum APIPath {
  register,
  login,
  validate_email,
  new_products,
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
      default:
        return "";
    }
  }
}
