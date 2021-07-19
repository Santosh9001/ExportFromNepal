enum APIPath {
  register,
  validate_email,
}

class APIPathHelper {
  static String getValue(APIPath path) {
    switch (path) {
      case APIPath.register:
        return "customers";
      case APIPath.validate_email:
        return "customers/isEmailAvailable";
      default:
        return "";
    }
  }
}
