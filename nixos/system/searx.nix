{
  pkgs,
  ...
}:{
  environment.systemPackages = with pkgs; [
    searxng
  ];
  services.searx = {
    enable = true;
    settings = {
      server = {
        port = 8888;
        bind_address = "10.0.0.1";
        secret_key = "712gdb1iu2ydhh";
      };
    };
  };
}
