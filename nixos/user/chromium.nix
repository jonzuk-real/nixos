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
	defaultSearchProviderSearchURL = "https://duckduckgo.com/?t=h_&q={searchTerms}";
	homepageLocation = "https://nixos.org";
 };
     






}
