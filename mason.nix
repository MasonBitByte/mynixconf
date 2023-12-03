{ config, pkgs, ... }:

{

 	users.users.mason = {
 	    isNormalUser = true;
 	    extraGroups = [ "wheel" ];
 	    packages = with pkgs; [
		firefox prismlauncher vscode fastfetch cpufetch 
		tree discord steam nvidia-vaapi-driver python3Full 
		temurin-jre-bin-8 temurin-bin toybox busybox libvirt 
		OVMFFull virt-manager spotify git ];
   };
}
 