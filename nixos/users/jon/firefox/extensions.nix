{pkgs, ...}:
{

 programs = {
 firefox = {
 enable = true;
 policies = {
      ExtensionSettings = with builtins;
        let extension = shortId: uuid: {
          name = uuid;
          value = {
            install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
            installation_mode = "normal_installed";
          };
        };
        in listToAttrs [
	  (extension "soundfixer" "soundfixer@unrelenting.technology")
	  (extension "enhancer-for-youtube" "enhancerforyoutube@maximerf.addons.mozilla.org")
	  (extension "return-youtube-dislikes" "{762f9885-5a13-4abd-9c77-433dcd38b8fd}")
	  (extension "youtubelivestreamstheatermode" "{de621c74-2aa6-4c91-a2da-28d445b66bab}")
	  (extension "unpaywall" "{f209234a-76f0-4735-9920-eb62507a54cd}")
	  (extension "clearurls" "{74145f27-f039-47ce-a470-a662b129930a}")
          (extension "darkreader" "addon@darkreader.org")       
# borked adblocking          (extension "adnauseam" "adnauseam@rednoise.org")
	  (extension "ublock origin" "uBlock0@raymondhill.net")
	  (extension "unpaywall" "{f209234a-76f0-4735-9920-eb62507a54cd}")
#         (extension "tree-style-tab" "treestyletab@piro.sakura.ne.jp")
#         (extension "augmented-steam" "{1be309c5-3e4f-4b99-927d-bb500eb4fa88}")
#         (extension "tabliss" "extension@tabliss.io")
#         (extension "alike03s-subscription-info" "{7d7241f8-5541-4ab7-9c8a-ad15bd3aa4c7}")
#         (extension "libredirect" "7esoorv3@alefvanoon.anonaddy.me")
#         (extension "protondb-steam" "{30280527-c46c-4e03-bb16-2e3ed94fa57c}")
#         (extension "steam-url-opener" "{85252760-c586-4180-8788-c50234c0ac08}")
#         (extension "steam-database" "firefox-extension@steamdb.info")

 ]; 
};
};
};
}
