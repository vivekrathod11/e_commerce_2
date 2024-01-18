class ConfigResponse {
  Data? data;
  bool? status;

  ConfigResponse({this.data, this.status});

  ConfigResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? launchDesignApi;
  Colors? colors;
  String? lastUpdatedTime;

  Data({this.launchDesignApi, this.colors, this.lastUpdatedTime});

  Data.fromJson(Map<String, dynamic> json) {
    launchDesignApi = json['launch_design_api'];
    colors =
    json['colors'] != null ? new Colors.fromJson(json['colors']) : null;
    lastUpdatedTime = json['last_updated_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['launch_design_api'] = this.launchDesignApi;
    if (this.colors != null) {
      data['colors'] = this.colors!.toJson();
    }
    data['last_updated_time'] = this.lastUpdatedTime;
    return data;
  }
}

class Colors {
  String? primaryColor;
  String? secondaryColor;
  String? tertiaryColor;
  String? buttonColor;
  String? cardColor;
  String? textColor;

  Colors(
      {this.primaryColor,
        this.secondaryColor,
        this.tertiaryColor,
        this.buttonColor,
        this.cardColor,
        this.textColor});

  Colors.fromJson(Map<String, dynamic> json) {
    primaryColor = json['primaryColor'];
    secondaryColor = json['secondaryColor'];
    tertiaryColor = json['tertiaryColor'];
    buttonColor = json['buttonColor'];
    cardColor = json['cardColor'];
    textColor = json['textColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['primaryColor'] = this.primaryColor;
    data['secondaryColor'] = this.secondaryColor;
    data['tertiaryColor'] = this.tertiaryColor;
    data['buttonColor'] = this.buttonColor;
    data['cardColor'] = this.cardColor;
    data['textColor'] = this.textColor;
    return data;
  }
}
