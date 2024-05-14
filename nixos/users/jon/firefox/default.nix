{
	imports = [ 	    ./settings.nix 
			    ./search.nix 
			    ./policies.nix
			    ./extensions.nix
			    ./preferences.nix
			    ./bookmarks			    
			    ];
	programs.firefox.enable = true;
	 
}


