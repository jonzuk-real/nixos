{
	programs.firefox = {
		enable = true;
		profiles.default = {
		settings = [ imports = ./settings.nix; ];
		bookmarks = [
	 	{
	 		name  = "wiki";
	 		url = "https://wikipedia.org";
	 	}
	 ];
	 
	 };
	};
	}
