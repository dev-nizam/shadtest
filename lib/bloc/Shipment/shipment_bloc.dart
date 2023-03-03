import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testapp/api/ShipmentApi.dart';
import 'package:testapp/model/ShipmentModel.dart';

part 'shipment_event.dart';
part 'shipment_state.dart';

class ShipmentBloc extends Bloc<ShipmentEvent, ShipmentState> {
  late List<ShipmentModel> shipmentModel;
  ShipmentApi shipmentApi=ShipmentApi();
  ShipmentBloc() : super(ShipmentInitial()) {
    on<FetchShipment>((event, emit) async {
    emit(ShipmentLoading());
    try {
      shipmentModel = await shipmentApi.getShipment(
     ShipperId:event.ShipperId, BranchId: event.BranchId,
    // Id: event.Id,
    );
    emit(ShipmentLoaded());
    } catch (e) {
    print("Error>>>>>>>>>>>>>>>>>>>>>>>>>" + e.toString());
    emit(ShipmentError());
    }
    });
  }
}
