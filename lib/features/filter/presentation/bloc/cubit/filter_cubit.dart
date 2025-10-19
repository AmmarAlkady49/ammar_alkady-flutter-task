import 'package:flutter_bloc/flutter_bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  final List<String> buildingTypes = [
    'الكل',
    'توين هاوس',
    'فيلا منفصلة',
    'تاون هاوس',
  ];
  final List<String> roomNumbers = [
    '4 غرف',
    '+5 غرف',
    'الكل',
    '3 غرف',
    'غرفتين',
  ];

  final List<String> paymentMethods = ['أي', 'تقسيط', 'كاش'];
  final List<String> buildingStatus = ['أي', 'جاهز', 'قيد الإنشاء'];

  String selectedType = 'الكل';
  String selectedRoomNumber = '+5 غرف';
  String selectedBuildingStatus = 'جاهز';
  String selectedPaymentMethod = 'كاش';

  void selectChip(String item, String type) {
    if (type == 'buildingTypes') selectedType = item;
    if (type == 'roomNumber') selectedRoomNumber = item;
    if (type == 'buildingStatus') selectedBuildingStatus = item;
    if (type == 'paymentMethod') selectedPaymentMethod = item;
    emit(SelecteChip());
  }

  bool isSelected(String item, String type) {
    if (type == 'buildingTypes') return selectedType == item;
    if (type == 'roomNumber') return selectedRoomNumber == item;
    if (type == 'buildingStatus') return selectedBuildingStatus == item;
    if (type == 'paymentMethod') return selectedPaymentMethod == item;
    return false;
  }
}
