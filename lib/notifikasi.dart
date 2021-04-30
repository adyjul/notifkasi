class notif {
  final String name;
  final String datetime;
  final String message;

  notif({ this.name, this.datetime, this.message});

  static final List<notif> dummyData = [
    notif(
      name: "Join Group",
      datetime: "20:18",
      message: "All member must be at leat join one group. All member allow join more than one",
    ),
    notif(
      name: "Join Group",
      datetime: "19:22",
      message: "All member must be at leat join one group. All member allow join more than one",
    ),
    notif(
      name: "Join Group",
      datetime: "14:34",
      message: "All member must be at leat join one group. All member allow join more than one",
    ),
  ];
}