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


	#  (extension "unpaywall" "{f209234a-76f0-4735-9920-eb62507a54cd}")
          #(extension "adnauseam" "adnauseam@rednoise.org")
         # (extension "clearurls" "{74145f27-f039-47ce-a470-a662b129930a}")
	 # (extension "darkreader" "addon@darkreader.org")
	 # (extension "soundfixer" "soundfixer@unrelenting.technology")
	  #(extension "enhancer-for-youtube" "enhancerforyoutube@maximerf.addons.mozilla.org")
	 # (extension "return-youtube-dislikes" "{762f9885-5a13-4abd-9c77-433dcd38b8fd}")
	#  (extension "youtubelivestreamstheatermode" "{de621c74-2aa6-4c91-a2da-28d445b66bab}")
 

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
