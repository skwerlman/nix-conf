{
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "192.168.1.81" = {
        hostname = "192.168.1.81";
        port = 22;
        identityFile = "/home/sk/.ssh/id_ed25519";
      };

      "192.168.1.69" = {
        hostname = "192.168.1.69";
        port = 32000;
        user = "root";
        proxyCommand = "ssh ssh20k.tetrarch.co -W 192.168.1.69:32000";
      };

      "192.168.1.10" = {
        hostname = "192.168.1.10";
        port = 22;
        user = "root";
        proxyCommand = "ssh ssh20k.tetrarch.co -W 192.168.1.10:22";
      };

      "192.168.1.17" = {
        hostname = "192.168.1.17";
        port = 22;
        user = "root";
        proxyCommand = "ssh ssh20k.tetrarch.co -W 192.168.1.17:22";
      };

      "192.168.1.75" = {
        hostname = "192.168.1.75";
        port = 20000;
        user = "wheeler";
        identityFile = "/home/sk/.ssh/id_ed25519";
      };

      "98.115.142.4" = {
        hostname = "98.115.142.4";
        port = 20000;
        identityFile = "/home/sk/.ssh/id_ed25519";
      };

      "ssh20k.tetrarch.co" = {
        hostname = "ssh20k.tetrarch.co";
        port = 20001;
        user = "wheeler";
        identityFile = "/home/sk/.ssh/id_ed25519";
      };
    };
  };
}
