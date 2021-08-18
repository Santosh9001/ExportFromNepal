enum APIPath {
  register,
  login,
  validate_email,
  new_products,
  best_selling,
  most_viewed,
  about_us,
  manuals,
  shipping_policy,
  team,
  terms_of_use,
  return_policy,
  payment_methods,
  affiliate_programs
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
        return "efn/products/new?pageSize=";
      case APIPath.best_selling:
        return "efn/products/best-seller?pageSize=";
      case APIPath.most_viewed:
        return "efn/products/most-viewed?pageSize=";
      case APIPath.about_us:
        return "efn/page/identifier/about-us";
      case APIPath.manuals:
        return "efn/manual";
      case APIPath.shipping_policy:
        return "efn/page/identifier/shipping-policy";
      case APIPath.team:
        return "efn/page/identifier/team";
      case APIPath.terms_of_use:
        return "efn/page/identifier/terms-of-use";
      case APIPath.return_policy:
        return "efn/page/identifier/return-policy";
      case APIPath.payment_methods:
        return "efn/page/identifier/payment-methods";
      case APIPath.affiliate_programs:
        return "efn/page/identifier/payment-methods";
      default:
        return "";
    }
  }
}
