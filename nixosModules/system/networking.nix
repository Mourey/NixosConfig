{ ... }:
{
  networking = {
    hostName = "carryrocks-laptop"; # Define your hostname.
    networkmanager.enable = true;
    firewall = {
      allowedTCPPorts = [ 22 53 ];
      allowedUDPPorts = [ 51820 51821 51822 53 ];
    };

    # Enable NAT
    nat = {
      enable = true;
      enableIPv6 = true;
      externalInterface = "eth0";
      internalInterfaces = [ "mx" "us" "eu" ];
    };

    # Static configuration
    defaultGateway = {
      address = "192.168.1.1";
      interface = "wlp2s0";
    };

    nameservers = [ "192.168.1.1" ];
    domain = "hotrod.domain";
    search = [ "hotrod.domain" ];
    interfaces = {
      wlp2s0.ipv4.addresses = [{
        address = "192.168.1.40";
        prefixLength = 24;
      }];
    };


    wg-quick.interfaces = {
      "mx" = {
        listenPort = 51820;
        address = [ "10.2.0.2/32" ];
        dns = [ "10.2.0.1" ];
        privateKeyFile = "/etc/wireguard/mx_private.key";
        peers = [{
          publicKey = "G/3o3VMavYShMnCn6wN1XLNKrAzUYmK7NAEXqmpTCgo=";
          allowedIPs = [ "0.0.0.0/0" ];
          endpoint = "84.252.113.9:51820";
          persistentKeepalive = 25;
        }];
      };

      # "us" = {
      #   listenPort = 51820;
      #   address = [ "10.2.0.3/32" ];
      #   dns = [ "10.2.0.1" ];
      #   privateKeyFile = "/etc/wireguard/us_private.key";
      #   peers = [{
      #     publicKey = "sr/YwNGtQzjEi4eJ5fwswkFxuh2Au6NKN5MzUiWV9FY=";
      #     allowedIPs = [ "0.0.0.0/0" ];
      #     endpoint = "185.159.157.174:51820";
      #     persistentKeepalive = 25;
      #   }];
      # };
      #
      #
      # "eu" = {
      #   listenPort = 51820;
      #   address = [ "10.2.0.4/32" ];
      #   dns = [ "10.2.0.1" ];
      #   privateKeyFile = "/etc/wireguard/eu_private.key";
      #   peers = [{
      #     publicKey = "MK3425tJbRhEz+1xQLxlL+l6GNl52zKNwo5V0fHEwj4=";
      #     allowedIPs = [ "0.0.0.0/0" ];
      #     endpoint = "185.159.157.43:51820";
      #     persistentKeepalive = 25;
      #   }];
      # };
    };
  };
}
