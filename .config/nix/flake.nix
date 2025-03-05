{
  description = "nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
	  nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }:
  let
    configuration = { pkgs, config, ... }: {
      nixpkgs.config.allowUnfree = true;
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      # Packages
      environment.systemPackages =
        [ 
          pkgs.neovim
          pkgs.git
          pkgs.gcc14
          pkgs.nushell
          pkgs.eza
          pkgs.fzf
          pkgs.zoxide
          pkgs.oh-my-posh
          pkgs.stow
          pkgs.lazygit
          pkgs.ripgrep
          pkgs.pnpm
          pkgs.thefuck
          pkgs.tldr
          pkgs.bat
          pkgs.rip2
          pkgs.navi
          pkgs.nodejs_22
          pkgs.pngpaste
          pkgs.gh
          pkgs.dwt1-shell-color-scripts
          pkgs.lazydocker
          pkgs.dive
          pkgs.fd
        ];

      # Homebrew
      homebrew = {
        enable = true;
        brews = [ 
            "posting"
            "cocoapods" 
        ];
        casks = [
          "hammerspoon"
          "ghostty"
          "espanso"
          "appcleaner"
          "devtoys"
          "ollama"
          "google-chrome"
          "slack"
          "flutter"
          "android-studio"
          "docker"
          "obsidian"
          "raycast"
        ];
        onActivation.cleanup="zap";
        onActivation.autoUpdate = true;
        onActivation.upgrade = true;
      };


      # Mac Application

      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read -r src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
            '';
      # Systems

      system.defaults = {
        dock.autohide = true;
        dock.persistent-apps = [
          "/Applications/Obsidian.app"
          "/Applications/Ghostty.app"
          "/Applications/Arc.app"
          "/Applications/Google Chrome.app"
          "/Applications/Espanso.app"
          "/Applications/Raycast.app"
          "/Applications/DevToys.app"
          "/Applications/Ollama.app"
          "/Applications/AppCleaner.app"
        ];
      };

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#p1n9ui-MacBookAir
    darwinConfigurations."p1n9" = nix-darwin.lib.darwinSystem {
      modules = [ configuration
       nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            # Install Homebrew under the default prefix
            enable = true;

            # Apple Silicon Only: Also install Homebrew under the default Intel prefix for Rosetta 2
            enableRosetta = true;

            # User owning the Homebrew prefix
            user = "p1n9";

            autoMigrate = true;
          };
        } 
      ];
    };
  };
}
