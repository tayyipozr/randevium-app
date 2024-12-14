import 'package:randevium_app/constants/endpoints.dart';
import 'package:randevium_app/core/apis/base_api.dart';
import 'package:randevium_app/core/models/paginate_model.dart';
import 'package:randevium_app/features/appointment/data/models/appointment_model.dart';

abstract class AppointmentApi extends BaseApi {
  Future<List<AppointmentModel>> getAll();
}

class AppointmentApiImpl extends AppointmentApi {
  AppointmentApiImpl();

  @override
  Future<List<AppointmentModel>> getAll() async {
    try {
      final response = await dio.get(Endpoints.appointment);
      PaginateModel paginateModel =
          PaginateModel.fromJson(response.data, (json) => AppointmentModel.fromJson(json as Map<String, dynamic>));
      List<AppointmentModel> responseModel = paginateModel.items!.map((e) => e as AppointmentModel).toList();
      return responseModel;
    } catch (e) {
      rethrow;
    }
  }
}
