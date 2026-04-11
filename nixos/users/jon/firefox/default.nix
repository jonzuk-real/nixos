{
	imports = [ 	    ./search.nix 
			    ./policies.nix
			    ./extensions.nix
			    ./preferences.nix
			    ./bookmarks			    
			    ];
	programs.firefox.enable = true;
	programs.firefox.profiles.default.bookmarks.force = true;
}


