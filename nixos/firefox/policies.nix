{

 ### Check about:policies#documentation for options.###
 
 programs.firefox.policies = {
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
	};



}
