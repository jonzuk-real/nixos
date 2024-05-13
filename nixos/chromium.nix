{ pkgs, config, libs, ... }:
{ 
 programs.chromium = {
  enable = true;
  extensions = [
"cjpalhdlnbpafiamejdnhcphjbkeiagm" # ublock origin
"eimadpbcbfnmbkopoojfekhnkhdbieeh" # Dark Reader
"gebbhagfogifgggkldgodflihgfeippi" # Return YouTube Dislike
"mnjggcdmjocbbbhaepdhchncahnbgone" # SponsorBlock for YouTube
"cmjhejfkhdonjimgkinjdombabgfbcal" # YouTube Livestreams Theater Mode
"ponfpcnoihfmfllpaingbgckeeldkhle" # Enhancer for YouTube
 ];


	defaultSearchProviderEnabled = true;
	defaultSearchProviderSearchURL = "https://yandex.com/search/?text={searchTerms}";
	homepageLocation = "https://nixos.org";
 };
     






}
