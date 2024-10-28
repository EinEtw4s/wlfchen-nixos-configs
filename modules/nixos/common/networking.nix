{ pkgs, ... }:
{
  networking.networkmanager = {
    enable = true;
    wifi.macAddress = "random";
  };

  # bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # communicate with android devices
  environment.systemPackages = with pkgs; [ scrcpy ];
  programs.adb.enable = true;

  # misc
  systemd.services.NetworkManager-wait-online.enable = false;
}
