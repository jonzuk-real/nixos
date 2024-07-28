{ pkgs, config, libs, ... }:
{ 
environment.systemPackages = with pkgs; [ ungoogled-chromium ];
 programs.chromium = {
  enable = true;
  extensions = [
"cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
"eimadpbcbfnmbkopoojfekhnkhdbieeh" # Dark Reader
"gebbhagfogifgggkldgodflihgfeippi" # Return YouTube Dislike
"mnjggcdmjocbbbhaepdhchncahnbgone" # SponsorBlock for YouTube - Skip Sponsorships
"cmjhejfkhdonjimgkinjdombabgfbcal" # YouTube Livestreams Theater Mode
"ponfpcnoihfmfllpaingbgckeeldkhle" # Enhancer for YouTube™
"mfidniedemcgceagapgdekdbmanojomk" # Coupert - Automatic Coupon Finder & Cashback
"hgeljhfekpckiiplhkigfehkdpldcggm" # Auto Refresh Plus | Page Monitor
 ];

# New Section
 extraOpts = {
      "BrowserSignin" = "0";
      "SyncDisabled" = "true";
      "PasswordManagerEnabled" = "false";
      "BuiltInDnsClientEnabled" = "false";
      "​DeviceMetricsReportingEnabled" = "true";
      "​ReportDeviceCrashReportInfo" = "true";
      "​SpellcheckEnabled" = "true";
      "​SpellcheckLanguage" = [
                               "de"
                               "en-US"
                             ];
};
# New Section Above


	defaultSearchProviderEnabled = true;
	defaultSearchProviderSearchURL = "https://search.brave.com/search?q={searchTerms}";
	homepageLocation = "https://nixos.org";
 };
     






}
