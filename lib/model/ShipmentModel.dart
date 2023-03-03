class ShipmentModel {
  ShipmentModel({
      this.shipmentId, 
      this.shipperId, 
      this.branchId, 
      this.itemDescription, 
      this.status, 
      this.recieverName, 
      this.recieverLastName, 
      this.recieverAddress1, 
      this.recieverAddress2, 
      this.recieverCity, 
      this.recieveZip, 
      this.recieverCondactDeatils, 
      this.isCOD, 
      this.advanceAmtFromTrader, 
      this.cODAmount, 
      this.shipmentType, 
      this.isDelete, 
      this.date, 
      this.tblBranch, 
      this.tblBranchItemRecievingDetails, 
      this.tblBranchToBranchRecieving, 
      this.tblLog, 
      this.tblPickUpRequest, 
      this.tblProduct, 
      this.tblRequest, 
      this.tblRunSheetDetails, 
      this.tblRunSheetStatus,});

  ShipmentModel.fromJson(dynamic json) {
    shipmentId = json['ShipmentId'];
    shipperId = json['ShipperId'];
    branchId = json['BranchId'];
    itemDescription = json['ItemDescription'];
    status = json['Status'];
    recieverName = json['RecieverName'];
    recieverLastName = json['RecieverLastName'];
    recieverAddress1 = json['RecieverAddress1'];
    recieverAddress2 = json['RecieverAddress2'];
    recieverCity = json['RecieverCity'];
    recieveZip = json['RecieveZip'];
    recieverCondactDeatils = json['RecieverCondactDeatils'];
    isCOD = json['IsCOD'];
    advanceAmtFromTrader = json['AdvanceAmtFromTrader'];
    cODAmount = json['CODAmount'];
    shipmentType = json['ShipmentType'];
    isDelete = json['IsDelete'];
    date = json['Date'];
    tblBranch = json['Tbl_Branch'];
    if (json['Tbl_Branch_Item_Recieving_Details'] != null) {
      tblBranchItemRecievingDetails = [];
      // json['Tbl_Branch_Item_Recieving_Details'].forEach((v) {
      //   tblBranchItemRecievingDetails?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_BranchToBranchRecieving'] != null) {
      tblBranchToBranchRecieving = [];
      // json['Tbl_BranchToBranchRecieving'].forEach((v) {
      //   tblBranchToBranchRecieving?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_Log'] != null) {
      tblLog = [];
      // json['Tbl_Log'].forEach((v) {
      //   tblLog?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_PickUpRequest'] != null) {
      tblPickUpRequest = [];
      // json['Tbl_PickUpRequest'].forEach((v) {
      //   tblPickUpRequest?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_Product'] != null) {
      tblProduct = [];
      // json['Tbl_Product'].forEach((v) {
      //   tblProduct?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_Request'] != null) {
      tblRequest = [];
      // json['Tbl_Request'].forEach((v) {
      //   tblRequest?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_RunSheetDetails'] != null) {
      tblRunSheetDetails = [];
      // json['Tbl_RunSheetDetails'].forEach((v) {
      //   tblRunSheetDetails?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_RunSheetStatus'] != null) {
      tblRunSheetStatus = [];
      // json['Tbl_RunSheetStatus'].forEach((v) {
      //   tblRunSheetStatus?.add(Dynamic.fromJson(v));
      // });
    }
  }
  int? shipmentId;
  int? shipperId;
  int? branchId;
  String? itemDescription;
  String? status;
  String? recieverName;
  String? recieverLastName;
  String? recieverAddress1;
  String? recieverAddress2;
  String? recieverCity;
  String? recieveZip;
  String? recieverCondactDeatils;
  bool? isCOD;
  dynamic advanceAmtFromTrader;
  double? cODAmount;
  dynamic shipmentType;
  dynamic isDelete;
  dynamic date;
  dynamic tblBranch;
  List<dynamic>? tblBranchItemRecievingDetails;
  List<dynamic>? tblBranchToBranchRecieving;
  List<dynamic>? tblLog;
  List<dynamic>? tblPickUpRequest;
  List<dynamic>? tblProduct;
  List<dynamic>? tblRequest;
  List<dynamic>? tblRunSheetDetails;
  List<dynamic>? tblRunSheetStatus;
  static List<ShipmentModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => ShipmentModel.fromJson(value)).toList();
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ShipmentId'] = shipmentId;
    map['ShipperId'] = shipperId;
    map['BranchId'] = branchId;
    map['ItemDescription'] = itemDescription;
    map['Status'] = status;
    map['RecieverName'] = recieverName;
    map['RecieverLastName'] = recieverLastName;
    map['RecieverAddress1'] = recieverAddress1;
    map['RecieverAddress2'] = recieverAddress2;
    map['RecieverCity'] = recieverCity;
    map['RecieveZip'] = recieveZip;
    map['RecieverCondactDeatils'] = recieverCondactDeatils;
    map['IsCOD'] = isCOD;
    map['AdvanceAmtFromTrader'] = advanceAmtFromTrader;
    map['CODAmount'] = cODAmount;
    map['ShipmentType'] = shipmentType;
    map['IsDelete'] = isDelete;
    map['Date'] = date;
    map['Tbl_Branch'] = tblBranch;
    if (tblBranchItemRecievingDetails != null) {
      map['Tbl_Branch_Item_Recieving_Details'] = tblBranchItemRecievingDetails?.map((v) => v.toJson()).toList();
    }
    if (tblBranchToBranchRecieving != null) {
      map['Tbl_BranchToBranchRecieving'] = tblBranchToBranchRecieving?.map((v) => v.toJson()).toList();
    }
    if (tblLog != null) {
      map['Tbl_Log'] = tblLog?.map((v) => v.toJson()).toList();
    }
    if (tblPickUpRequest != null) {
      map['Tbl_PickUpRequest'] = tblPickUpRequest?.map((v) => v.toJson()).toList();
    }
    if (tblProduct != null) {
      map['Tbl_Product'] = tblProduct?.map((v) => v.toJson()).toList();
    }
    if (tblRequest != null) {
      map['Tbl_Request'] = tblRequest?.map((v) => v.toJson()).toList();
    }
    if (tblRunSheetDetails != null) {
      map['Tbl_RunSheetDetails'] = tblRunSheetDetails?.map((v) => v.toJson()).toList();
    }
    if (tblRunSheetStatus != null) {
      map['Tbl_RunSheetStatus'] = tblRunSheetStatus?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}