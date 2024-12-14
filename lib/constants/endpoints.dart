class Endpoints {

  Endpoints._();

  static const _baseUrl = "http://10.0.2.2:5055/api";
  // Auth
  static const _auth = "$_baseUrl/Auth";
  static const login = "$_auth/Login";
  static const getMe = "$_auth/GetMe";
  // Appointment
  static const appointment = "$_baseUrl/Appointment";
  // AppointmentDetail
  static const appointmentDetails = "$_baseUrl/AppointmentDetail";
}


/*
class Endpoints {
  final String _baseUrl = "https://fakestoreapi.com";
  String product;
  String products;
  String category;
  String categories;

  Endpoints() {
    product = _baseUrl + "/product";
    products = _baseUrl + "/products";
    category = _baseUrl + "/products/category/";
    categories = _baseUrl + "/products/categories";
  }
}
 */