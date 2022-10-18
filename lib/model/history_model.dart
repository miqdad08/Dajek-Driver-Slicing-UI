class HistoryModel {
  String status;
  String income;
  String time;
  String customer;
  String startTrip;
  String endTrip;
  String startTripTime;
  String endTripTime;

  HistoryModel(
      {required this.status,
      required this.income,
      required this.time,
      required this.customer,
      required this.startTrip,
      required this.endTrip,
      required this.startTripTime,
      required this.endTripTime});
}

var historyList = [
  HistoryModel(
      status: "COMPLETE",
      income: "\$99.53",
      time: "5 Min ago",
      customer: "Udacoding Office",
      startTrip: "Jl Medan Merdeka, Jakarta Timur",
      endTrip: "Jl Duren sawir, Kota jakarta Timur",
      startTripTime: "09:00 PM",
      endTripTime: "10:00 PM"),
  HistoryModel(
      status: "FAILED",
      income: "\$59.53",
      time: "5 Min ago",
      customer: "Udacoding Office",
      startTrip: "Jl Medan Merdeka, Jakarta Timur",
      endTrip: "Jl Duren sawir, Kota jakarta Timur",
      startTripTime: "09:00 PM",
      endTripTime: "10:00 PM"),

];
