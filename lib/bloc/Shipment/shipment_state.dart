part of 'shipment_bloc.dart';

@immutable
abstract class ShipmentState {}

class ShipmentInitial extends ShipmentState {}
class ShipmentLoading extends ShipmentState {}
class ShipmentLoaded extends ShipmentState {}
class ShipmentError extends ShipmentState {}
