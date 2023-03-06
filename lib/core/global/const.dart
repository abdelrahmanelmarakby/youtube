import '../services/get_storage_helper.dart';
import '../services/network_service.dart/dio_network_service.dart';

const String dummyImage0 = "https://picsum.photos/800";
const String dummyImage1 = "https://picsum.photos/900";
const String dummyImage2 = "https://picsum.photos/1000";
const String dummyImage3 = "https://picsum.photos/1100";
const String dummyImage4 = "https://picsum.photos/1200";
const String emptyImage =
    "https://assets2.lottiefiles.com/private_files/lf30_e3pteeho.json";
final NetworkService networkService = NetworkService(
  baseUrl: APIKeys.baseUrl,
  httpHeaders: {
    'Authorization': 'Bearer ${CacheHelper.getUserToken}',
    'Accept': 'application/json',
    'lang': CacheHelper.getLocale,
  },
);

class APIKeys {
  static String baseUrl = "https://dashboard.mobtkra-press.com";
  static String login = "/api/login";
  static String register = "/api/register";
  static String verifyEmail = "/api/verify/email/code";
  static String forgetPassword = "/api/send/code/reset/password";
  static String receiveResetPasswordOtp = "/api/verify/password/code";
  static String setNewPassword = "/api/reset/password";
  static String resendOtpCode = "/api/resend/code";
  static String getUserData = "/api/user/info";
  static String getHomeOffers = "/api/ads";
  static String getMainServices = "/api/all/main/service";
  static String getMainProducts = "/api/all/main/product";
  static String getAllOffers = "/api/all/offers";
  static String editUserImage = "/api/edit/img";
  static String editName = "/api/edit/name";
  static String editPassword = "/api/edit/password";
  static String editPhone = "/api/edit/phone";
  static String editEmail = "/api/edit/email";
  static String editEmailOtp = "/api/edit/email";
  static String editEmailResendOtp = "/api/check/code/to/change/email";
  static String getSubServices = "/api/all/sub/service/belong/main/service";
  static String getSubProducts = "/api/all/sub/product/belong/main/product";
  static String addProductToFavorite = "/api/add/product/favorite";
  static String getAllFavorites = "/api/all/product/favorites";
  static String removeFavoriteItem = "/api/delete/product/favorite";
  static String logOut = "/api/logout";
  static String getAllSubProducts = "/api/all/sub/product";
  static String getAllSubServices = "/api/all/sub/service";
  static String addToCart = "/api/add/product/cart";
  static String requestServices = "/api/service/request";
  static String addAddress = "/api/add/address";
  static String getAllAddresses = "/api/all/addresses";
  static String getCartItems = "/api/all/product/carts";
  static String removeCartItem = "/api/delete/product/cart";
  static String getAllBranches = "/api/all/company/branch";
  static String getAllNotification = "/api/all/notifications";
  static String deleteAllNotification = "/api/delete/all/notifications";
  static String deleteOneNotification = "/api/delete/one/notification";
  static String numOfNotification = "/api/number/of/notifications";
  static String getCurrentServices = "/api/all/order/services";
  static String getDoneServices = "/api/all/order/services/done";
  static String getCurrentProducts = "/api/all/order/products";
  static String getDoneProducts = "/api/all/order/products/done";
  static String contactUs = "/api/contact/us";
  static String servicesSearch = "/api/search/main/service";
  static String productsSearch = "/api/search/main/product";
  static String resendRejectedService = "/api/resend/service/request";
  static String buyAcceptedService = "/api/buy/service";
  static String applyDiscountCode = "/api/check/cobon";
  static String buyProduct = "/api/buy/products";
}
