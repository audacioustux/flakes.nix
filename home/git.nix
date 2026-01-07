{ primaryUser, ... }:
{
  programs.git = {
    enable = true;
    userName = "Tanjim H."; # CHANGE: your name
    userEmail = "contact@audacioustux.com"; # CHANGE: your email

    signing = {
      key = "3832734CA36A92B9"; # CHANGE: your GPG key (or remove signing block)
      signByDefault = true;
    };

    lfs.enable = true;

    ignores = [ "**/.DS_STORE" "**/.serena" ];

    extraConfig = {
      github = {
        user = "audacioustux"; # CHANGE: your GitHub username
      };
      push = {
        autoSetupRemote = true;
      };
      init = {
        defaultBranch = "main";
      };
    };
  };
}
