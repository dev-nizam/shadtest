class LoginModel {
  LoginModel({
      this.shipperId, 
      this.sId, 
      this.branchID, 
      this.name, 
      this.userName, 
      this.password, 
      this.country, 
      this.address, 
      this.mobile, 
      this.language, 
      this.logoPath, 
      this.isActive, 
      this.isDelete, 
      this.date, 
      this.companyName, 
      this.phoneNumber, 
      this.state, 
      this.city, 
      this.zipCode, 
      this.googleLocation, 
      this.rateLevelDomestic, 
      this.rateLevelInternational, 
      this.paymentType, 
      this.deliveryCharge, 
      this.cancellationCharge, 
      this.bankName, 
      this.accountNumber, 
      this.typeOfAccount, 
      this.locationId, 
      this.tblBranch, 
      this.tblBranchItemRecieving, 
      this.tblBranchItemRecievingDetails, 
      this.tblPaymentTransactions, 
      this.tblPickUpRequest, 
      this.tblRequest, 
      this.tblUser, 
      this.tblRateMaster, 
      this.tblProduct,});

  LoginModel.fromJson(dynamic json) {
    shipperId = json['ShipperId'];
    sId = json['SId'];
    branchID = json['BranchID'];
    name = json['Name'];
    userName = json['UserName'];
    password = json['Password'];
    country = json['Country'];
    address = json['Address'];
    mobile = json['Mobile'];
    language = json['Language'];
    logoPath = json['LogoPath'];
    isActive = json['IsActive'];
    isDelete = json['IsDelete'];
    date = json['Date'];
    companyName = json['CompanyName'];
    phoneNumber = json['PhoneNumber'];
    state = json['State'];
    city = json['City'];
    zipCode = json['ZipCode'];
    googleLocation = json['GoogleLocation'];
    rateLevelDomestic = json['RateLevelDomestic'];
    rateLevelInternational = json['RateLevelInternational'];
    paymentType = json['PaymentType'];
    deliveryCharge = json['DeliveryCharge'];
    cancellationCharge = json['CancellationCharge'];
    bankName = json['BankName'];
    accountNumber = json['AccountNumber'];
    typeOfAccount = json['TypeOfAccount'];
    locationId = json['LocationId'];
    tblBranch = json['Tbl_Branch'];
    if (json['Tbl_Branch_Item_Recieving'] != null) {
      tblBranchItemRecieving = [];
      // json['Tbl_Branch_Item_Recieving'].forEach((v) {
      //   tblBranchItemRecieving?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_Branch_Item_Recieving_Details'] != null) {
      tblBranchItemRecievingDetails = [];
      // json['Tbl_Branch_Item_Recieving_Details'].forEach((v) {
      //   tblBranchItemRecievingDetails?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_Payment_Transactions'] != null) {
      tblPaymentTransactions = [];
      // json['Tbl_Payment_Transactions'].forEach((v) {
      //   tblPaymentTransactions?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_PickUpRequest'] != null) {
      tblPickUpRequest = [];
      // json['Tbl_PickUpRequest'].forEach((v) {
      //   tblPickUpRequest?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_Request'] != null) {
      tblRequest = [];
      // json['Tbl_Request'].forEach((v) {
      //   tblRequest?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['Tbl_User'] != null) {
      tblUser = [];
      // json['Tbl_User'].forEach((v) {
      //   tblUser?.add(Dynamic.fromJson(v));
      // });
    }
    tblRateMaster = json['Tbl_RateMaster'];
    if (json['Tbl_Product'] != null) {
      tblProduct = [];
      // json['Tbl_Product'].forEach((v) {
      //   tblProduct?.add(Dynamic.fromJson(v));
      // });
    }
  }
  int? shipperId;
  dynamic sId;
  int? branchID;
  String? name;
  String? userName;
  dynamic password;
  String? country;
  String? address;
  String? mobile;
  dynamic language;
  dynamic logoPath;
  dynamic isActive;
  dynamic isDelete;
  dynamic date;
  String? companyName;
  dynamic phoneNumber;
  dynamic state;
  String? city;
  String? zipCode;
  String? googleLocation;
  dynamic rateLevelDomestic;
  dynamic rateLevelInternational;
  dynamic paymentType;
  dynamic deliveryCharge;
  dynamic cancellationCharge;
  String? bankName;
  String? accountNumber;
  dynamic typeOfAccount;
  dynamic locationId;
  dynamic tblBranch;
  List<dynamic>? tblBranchItemRecieving;
  List<dynamic>? tblBranchItemRecievingDetails;
  List<dynamic>? tblPaymentTransactions;
  List<dynamic>? tblPickUpRequest;
  List<dynamic>? tblRequest;
  List<dynamic>? tblUser;
  dynamic tblRateMaster;
  List<dynamic>? tblProduct;
  static List<LoginModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => LoginModel.fromJson(value)).toList();
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ShipperId'] = shipperId;
    map['SId'] = sId;
    map['BranchID'] = branchID;
    map['Name'] = name;
    map['UserName'] = userName;
    map['Password'] = password;
    map['Country'] = country;
    map['Address'] = address;
    map['Mobile'] = mobile;
    map['Language'] = language;
    map['LogoPath'] = logoPath;
    map['IsActive'] = isActive;
    map['IsDelete'] = isDelete;
    map['Date'] = date;
    map['CompanyName'] = companyName;
    map['PhoneNumber'] = phoneNumber;
    map['State'] = state;
    map['City'] = city;
    map['ZipCode'] = zipCode;
    map['GoogleLocation'] = googleLocation;
    map['RateLevelDomestic'] = rateLevelDomestic;
    map['RateLevelInternational'] = rateLevelInternational;
    map['PaymentType'] = paymentType;
    map['DeliveryCharge'] = deliveryCharge;
    map['CancellationCharge'] = cancellationCharge;
    map['BankName'] = bankName;
    map['AccountNumber'] = accountNumber;
    map['TypeOfAccount'] = typeOfAccount;
    map['LocationId'] = locationId;
    map['Tbl_Branch'] = tblBranch;
    if (tblBranchItemRecieving != null) {
      map['Tbl_Branch_Item_Recieving'] = tblBranchItemRecieving?.map((v) => v.toJson()).toList();
    }
    if (tblBranchItemRecievingDetails != null) {
      map['Tbl_Branch_Item_Recieving_Details'] = tblBranchItemRecievingDetails?.map((v) => v.toJson()).toList();
    }
    if (tblPaymentTransactions != null) {
      map['Tbl_Payment_Transactions'] = tblPaymentTransactions?.map((v) => v.toJson()).toList();
    }
    if (tblPickUpRequest != null) {
      map['Tbl_PickUpRequest'] = tblPickUpRequest?.map((v) => v.toJson()).toList();
    }
    if (tblRequest != null) {
      map['Tbl_Request'] = tblRequest?.map((v) => v.toJson()).toList();
    }
    if (tblUser != null) {
      map['Tbl_User'] = tblUser?.map((v) => v.toJson()).toList();
    }
    map['Tbl_RateMaster'] = tblRateMaster;
    if (tblProduct != null) {
      map['Tbl_Product'] = tblProduct?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}