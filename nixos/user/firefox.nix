{ pkgs, config, libs, ... }:

  let
    lock-false = {
      Value = false;
      Status = "locked";
    };
    lock-true = {
      Value = true;
      Status = "locked";
    };
  in

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
	  (extension "unpaywall" "{f209234a-76f0-4735-9920-eb62507a54cd}")
#          (extension "tree-style-tab" "treestyletab@piro.sakura.ne.jp")
          (extension "adnauseam" "adnauseam@rednoise.org")
#          (extension "augmented-steam" "{1be309c5-3e4f-4b99-927d-bb500eb4fa88}")
#          (extension "tabliss" "extension@tabliss.io")
#          (extension "alike03s-subscription-info" "{7d7241f8-5541-4ab7-9c8a-ad15bd3aa4c7}")
#          (extension "libredirect" "7esoorv3@alefvanoon.anonaddy.me")
          (extension "clearurls" "{74145f27-f039-47ce-a470-a662b129930a}")
	  (extension "darkreader" "addon@darkreader.org")
#          (extension "protondb-steam" "{30280527-c46c-4e03-bb16-2e3ed94fa57c}")
#          (extension "steam-url-opener" "{85252760-c586-4180-8788-c50234c0ac08}")
#          (extension "steam-database" "firefox-extension@steamdb.info")
	  (extension "soundfixer" "soundfixer@unrelenting.technology")
	  (extension "enhancer-for-youtube" "enhancerforyoutube@maximerf.addons.mozilla.org")
	  (extension "return-youtube-dislikes" "{762f9885-5a13-4abd-9c77-433dcd38b8fd}")
	  (extension "youtubelivestreamstheatermode" "{de621c74-2aa6-4c91-a2da-28d445b66bab}")
        ];
        # To add additional extensions, find it on addons.mozilla.org, find
        # the short ID in the url (like https://addons.mozilla.org/en-US/firefox/addon/!SHORT_ID!/)
        # run `jq .browser_specific_settings.gecko.id manifest.json` or
        # Then, download the XPI by filling it in to the install_url template, unzip it,
        # `jq .applications.gecko.id manifest.json` to get the UUID
    #Policy 
        # Check about:policies#documentation for options.
DisableFirefoxAccounts = true;
DisablePocket = true;
DisableTelemetry = true;
DisableFirefoxStudies = true;
        EnableTrackingProtection = {
          Value= true;
          Locked = true;
          Cryptomining = true;
          Fingerprinting = true;
        };
DisableAccounts = true;
DisableFirefoxScreenshots = true;
OverrideFirstRunPage = "";
OverridePostUpdatePage = "";
DontCheckDefaultBrowser = true;
DisplayBookmarksToolbar = "newtab"; # alternatives: "always" or "newtab"
DisplayMenuBar = "default-off"; # alternatives: "always", "never" or "default-on"
SearchBar = "unified"; # alternative: "separate"


# Preferences
       # Check about:config for options.
 Preferences =  {
          "browser.contentblocking.category" = { Value = "strict"; Status = "locked"; };
          "extensions.pocket.enabled" = lock-false;
          "extensions.screenshots.disabled" = lock-true;
          "browser.fullscreen.autohide" = lock-true;
          "browser.topsites.contile.enabled" = lock-false;
          "browser.formfill.enable" = lock-false;
          "browser.search.suggest.enabled" = lock-false;
          "browser.search.suggest.enabled.private" = lock-false;
          "browser.urlbar.suggest.searches" = lock-false;
          "browser.urlbar.showSearchSuggestionsFirst" = lock-false;
          "browser.newtabpage.activity-stream.feeds.section.topstories" = lock-false;
          "browser.newtabpage.activity-stream.feeds.snippets" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includePocket" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeDownloads" = lock-false;
          "browser.newtabpage.activity-stream.section.highlights.includeVisited" = lock-false;
          "browser.newtabpage.activity-stream.showSponsored" = lock-false;
          "browser.newtabpage.activity-stream.system.showSponsored" = lock-false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = lock-false;
 
   };
  };
 };
};
#imports = ./user/bookmarks.nix;

}
