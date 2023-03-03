part of 'shipment_bloc.dart';

@immutable
abstract class ShipmentEvent {}
class FetchShipment extends ShipmentEvent {
  final String ShipperId;
  final String BranchId;

  FetchShipment({
    required this.ShipperId,
    required this.BranchId,
  });
}