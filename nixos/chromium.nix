{ pkgs, config, libs, ... }:
{ 
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


	defaultSearchProviderEnabled = true;
	defaultSearchProviderSearchURL = "https://search.brave.com/search?q={searchTerms}";
	homepageLocation = "https://nixos.org";
 };
     






}
