# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./wm.nix
      ./mason.nix	
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # Kernel Version Adjustment
  boot.kernelPackages = pkgs.linuxPackages_6_5;
  # Hostname
  networking.hostName = "iForgor-nix";
  # Time zone.
  time.timeZone = "America/New_York";
  # System Packages
  environment.systemPackages = with pkgs; [
     nano curl wget sbctl
   ];

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
 
  # System Version
  system.stateVersion = "23.11";

}

