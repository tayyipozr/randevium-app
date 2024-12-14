import 'package:randevium_app/constants/endpoints.dart';
import 'package:randevium_app/core/apis/base_api.dart';
import 'package:randevium_app/core/models/paginate_model.dart';
import 'package:randevium_app/core/usecases/usecase.dart';
import 'package:randevium_app/features/appointment_details/data/models/appointment_details_model.dart';

abstract class AppointmentDetailsApi extends BaseApi {
  Future<List<AppointmentDetailsModel>> getAppointmentDetails(IdParams params);
}

class AppointmentDetailsApiImpl extends AppointmentDetailsApi {
  AppointmentDetailsApiImpl();

  @override
  Future<List<AppointmentDetailsModel>> getAppointmentDetails(IdParams params) async {
    try {
      final response = await dio.get(Endpoints.appointmentDetails, queryParameters: {"id": params.id});
      PaginateModel paginateModel = PaginateModel.fromJson(
          response.data, (json) => AppointmentDetailsModel.fromJson(json as Map<String, dynamic>));
      List<AppointmentDetailsModel> responseModel =
          paginateModel.items!.map((e) => e as AppointmentDetailsModel).toList();
      return responseModel;
    } catch (e) {
      rethrow;
    }
  }
}
