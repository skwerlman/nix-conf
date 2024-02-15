{ config, lib, pkgs, stylix, ... }:
let
  archives = with pkgs; [
    zip
    xz
    unzip
    p7zip
    zstd
    gnutar
  ];

  browser = with pkgs; [ vivaldi vivaldi-ffmpeg-codecs ];

  media = with pkgs; [ helvum ];

  games = with pkgs; [
    itch
    steam
    protonup-qt
    protontricks
    prismlauncher
    dolphin-emu
    lutris
  ];

  networking = with pkgs; [
    mtr
    iperf3
    dnsutils
    ldns
    socat
    nmap
    ipcalc
  ];

  system-utils = with pkgs; [
    libnotify
    sysstat
    lm_sensors
    pciutils
    usbutils
    iotop
    iftop
  ];

  cli-utils = with pkgs; [
    yq-go
    file
    which
    tree
    gnused
    gawk
    neofetch
  ];

  communication = with pkgs; [
    discord-canary
    protonmail-bridge
  ];

  programming = with pkgs; [
    elixir-ls
    elixir_1_16
    strace
    ltrace
    lsof
  ];

  misc = with pkgs; [
    nix-output-monitor
    nixpkg-fmt
  ];
in
{
  home.packages =
    archives
    ++ browser
    ++ media
    ++ games
    ++ networking
    ++ system-utils
    ++ cli-utils
    ++ communication
    ++ programming
    ++ misc;
}
