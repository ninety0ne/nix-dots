{ pkgs, ... }:

{
  services.picom.enable = true;
  
  services.picom.package = pkgs.picom.overrideAttrs(o: {
      src = pkgs.fetchFromGitHub {
        repo = "picom-jonaburg-fix";
        owner = "Arian8j2";
        rev = "31d25da22b44f37cbb9be49fe5c239ef8d00df12";
        sha256 = "0vkf4azs2xr0j03vkmn4z9ll4lw7j8s2k0rdsfw630hd78l1ngnp";
      };
  });
}
