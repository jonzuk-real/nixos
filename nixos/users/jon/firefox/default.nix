{
	imports = [ ./settings.nix 
			    ./search.nix 
			    ./policies.nix
			    ./extensions.nix
			    ./preferences.nix
			    
			    ];
	programs.firefox = {
		enable = true;
		profiles.default = {
		bookmarks = [
	 	{
	 		name  = "wiki";
	 		url = "https://wikipedia.org";
	 	}
	 ];
	 
	 };
	};
	}
