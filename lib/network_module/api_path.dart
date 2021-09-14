enum APIPath {
  register,
  login,
  social_login,
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
  affiliate_programs,
  contact,
  categories,
  subCategories,
  categoryProducts,
  just_for_you,
  create_cart,
  blogs,
  home_content,
  product_details,
  updatePassword,
  sendEmailVerification,
  loggedInUser,
  affiliate_groups,
  countries,
  currencies,
  apply_coupons
}

class APIPathHelper {
  static String getValue(APIPath path) {
    switch (path) {
      case APIPath.register:
        return "customers";
      case APIPath.login:
        return "efn/customer/login";
      case APIPath.social_login:
        return "efn/social/login";
      case APIPath.validate_email:
        return "customers/isEmailAvailable";
      case APIPath.new_products:
        return "efn/products/new";
      case APIPath.best_selling:
        return "efn/products/best-seller";
      case APIPath.most_viewed:
        return "efn/products/most-viewed";
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
        return "efn/page/identifier/affiliate-program";
      case APIPath.contact:
        return "efn/contact";
      case APIPath.categories:
        return "efn/categories";
      case APIPath.subCategories:
        return "efn/categories?id=";
      case APIPath.categoryProducts:
        return "efn/categories/";
      case APIPath.just_for_you:
        return "efn/products/just-for-you";
      case APIPath.create_cart:
        return "carts/mine";
      case APIPath.blogs:
        return "efn/blog/post/list/1/100";
      case APIPath.home_content:
        return "efn/home/content";
      case APIPath.product_details:
        return "efn/product/id/";
      case APIPath.updatePassword:
        return "customers/me/password";
      case APIPath.sendEmailVerification:
        return "efn/customers/password/";
      case APIPath.loggedInUser:
        return "customers/me";
      case APIPath.affiliate_groups:
        return "efn/affiliate/groups";
      case APIPath.countries:
        return "directory/countries";
      case APIPath.currencies:
        return "directory/currency";
      case APIPath.apply_coupons:
        return "carts/mine/coupons/";
      default:
        return "";
    }
  }
}
