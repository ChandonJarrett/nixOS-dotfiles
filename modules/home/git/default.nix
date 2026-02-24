{ ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user.name = "ChandonJarrett";
      user.email = "chandonvjarrett@gmail.com";

      init.defaultBranch = "main";
      advice.defaultBranchName = false;
    };
  };
}