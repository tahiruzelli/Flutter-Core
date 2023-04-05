class Urls {
  static const String refreshToken = "/auth/refresh";
  static const String checkForceUpdate = "/checkAppUpdate";
  static const String login = "/login";
  static const String userById = "/users/{id}";
  static const String resetPassword = "/reset-password";
  static const String getAllPropertyGroupsList =
      "/v2/propertyGroups?all=1&with=statistics";
  static const String getNotificationsUrl = "/notifications?";
  static const String getNotificationsParameters =
      "with=creator&with=creator.avatar&with=creator.activity_monthly&with=creator.role&with=create.role.permissions&with=snag&with=snag.project&with=assignee";
  static const String emptyUserImageUrl = "https://serc.carleton.edu/download/images/54334/empty_user_icon_256.v2.png";
  static const String mediaUrl = "/media";
  static const String subGroupUrl = "/projects?all=1&property_group_id={id}&with_snag_counts=1&with%5B%5D=media";
  static const String getUnitsUrl = "/projects/{id}/units";
  static const String getUnits2Url = "/projects/{id}?with=units&with=units.media";
  static const String getSnagsUrl = "/snags?floor_id={floorId}&project_id={projectId}&all=1";
  static const String getCategoriesUrl = "/master-categories?all=1&with=master_subcategories";
  static const String getInspectorsUrl = "/projects/{id}?with=inspectors";
  static const String snagUrl = "/snags";
  static const String getLabelsUrl = "/labels?all=1&project_id={id}";
  static const String sendReportUrl = "/reports";
  static const String commentsUrl = "/comments";
  static const String getStatsUrl= "/projects/{id}/stats";
  static const String getInspections = "/inspections";
  static const String getInspectionsTemplateUrl = "/inspection-templates";
}
