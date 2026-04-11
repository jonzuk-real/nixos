 {
 programs.firefox.profiles.default.search = {
            force = true;
            default = "ddg";
            order = [ "ddg" "Searx" "google" ];
            engines = {
	       "ChatGPT" = {
                urls = [{ template = "https://chatgpt.com/?q={searchTerms}&hints=search,reason&ref=ext"; }];
                icon = "https://external-content.duckduckgo.com/ip3/www.perplexity.ai.ico";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@GPT" ];
              };
	      "Perplexity AI" = {
                urls = [{ template = "https://www.perplexity.ai/search/new?q={searchTerms}"; }];
                icon = "https://external-content.duckduckgo.com/ip3/www.perplexity.ai.ico";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@Perp" ];
              };
              "Nix Packages" = {
                urls = [{
                  template = "https://search.nixos.org/packages";
                  params = [
                    { name = "type"; value = "packages"; }
                    { name = "query"; value = "{searchTerms}"; }
                  ];
                }];
               
                definedAliases = [ "@NP" ];
              };
              "NixOS Wiki" = {
                urls = [{ template = "https://nixos.wiki/index.php?search={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@NixWiki" ];
              };
              "Searx" = {
                urls = [{ template = "https://searx.aicampground.com/?q={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@Searx" ];
              };
                "Yandex" = {
                urls = [{ template = "https://yandex.com/search/?text={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@Yandex" ];
              };
                "Same.Energy" = {
                urls = [{ template = "https://same.energy/search?q={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@Same.Energy" ];
              };
                "StartPage" = {
                urls = [{ template = "https://www.startpage.com/sp/search?query={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@Startpage" ];
              };
                "archive.org" = {
                urls = [{ template = "https://archive.org/search?query={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@archive" ];
              };
                "ddg" = {
                urls = [{ template = "https://duckduckgo.com/?t=h_&q={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@DuckDuckGo" ];
              };
                "Brave Search" = {
                urls = [{ template = "https://search.brave.com/search?q={searchTerms}"; }];
                icon = "https://nixos.wiki/favicon.png";
                updateInterval = 24 * 60 * 60 * 1000; # every day
                definedAliases = [ "@Brave" ];
              };
              "Bing".metaData.hidden = true;
              "google".metaData.alias = "@g"; # builtin engines only support specifying one additional alias
            };
          };
}
