{
services.invidious.enable = true;
  services.invidious.settings = lib.mkForce {
    check_tables = true;
    db = {
      dbname = "invidious";
      host = "";
      password = "";
      port = 5432;
      user = "invidious";
    };
    host_binding = "0.0.0.0";
    default_user_preferences = {
      locale = "da";
      region = "DK";
    };
    captions = [
      "Danish"
      "English"
      "English (auto-generated)"
    ];
  };
}
