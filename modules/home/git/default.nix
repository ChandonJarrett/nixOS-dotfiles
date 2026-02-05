{ ... }:
{
  programs.git = {
    enable = true;

    userName = "ChandonJarrett";
    userEmail = "chandonvjarrett@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      advice.defaultBranchName = false;
    };
  };
}