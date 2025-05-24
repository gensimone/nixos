{ ... }:

{
  services.resolved.enable = false;
  networking = {
    nameservers = [ "127.0.0.1" "::1" ];
    networkmanager.dns = "none";
    dhcpcd.extraConfig = "nohook resolv.conf";
  };

  # See: https://nixos.wiki/wiki/Encrypted_DNS
  # See: https://github.com/DNSCrypt/dnscrypt-proxy/blob/master/dnscrypt-proxy/example-dnscrypt-proxy.toml
  services.dnscrypt-proxy2 = {
    enable = true;
    settings = {
      # List of servers to use.
      # Servers from the "public-resolvers" source (see down below) can
      # be viewed here: https://dnscrypt.info/public-servers
      #
      # The proxy will automatically pick working servers from this list.
      # Note that the require_* filters do NOT apply when using this setting.
      #
      # By default, this list is empty and all registered servers matching the
      # require_* filters will be used instead.
      #
      # server_names = [] ;

      # List of local addresses and ports to listen to. Can be IPv4 and/or IPv6.
      # Example with both IPv4 and IPv6:
      # listen_addresses = ['127.0.0.1:53', '[::1]:53']
      #
      # To listen to all IPv4 addresses, use `listen_addresses = ['0.0.0.0:53']`
      # To listen to all IPv4+IPv6 addresses, use `listen_addresses = ['[::]:53']`
      listen_addresses = [ "127.0.0.1:53" ];

      # Maximum number of simultaneous client connections to accept
      max_clients = 250;

      # Use servers reachable over IPv4
      ipv4_servers = true;

      # Use servers reachable over IPv6 -- Do not enable if you don't have IPv6 connectivity
      ipv6_servers = false;

      # Use servers implementing the DNSCrypt protocol
      dnscrypt_servers = true;

      # Use servers implementing the DNS-over-HTTPS protocol
      doh_servers = true;

      # Use servers implementing the Oblivius DoH protocol
      odoh_servers = true;

      # Servers must support DNS security extensions
      require_dnssec = true;

      # Server must not log user queries (declarative)
      require_nolog = true;

      # Server must not enforce its own blocklist (for parental control, ads blocking, etc ).
      require_nofilter = true;

      # Server names to avoid even if they match all criteria
      disabled_server_names = [];

      # Always use TCP to connect to upstream servers.
      # This can be useful if you need to route everything through Tor.
      # Otherwise, leave this to `false`, as it doesn't improve security
      # (dnscrypt-proxy will always encrypt everything even using UDP), and can
      # only increase latency.
      force_tcp = false;

      # Enable *experimental* support for HTTP/3 (DoH3, HTTP over QUIC)
      # Note that, like DNSCrypt but unlike other HTTP versions, this uses
      # UDP and (usually) port 443 instead of TCP.
      http3 = false;

      # How long a DNS query will wait for a response, in milliseconds.
      # If you have a network with *a lot* of latency, you may need to
      # increase this. Startup may be slower if you do so.
      # Don't increase it too much. 10000 is the highest reasonable value.
      # A timeout below 5000 is not recommended.
      timeout = 5000;

      # Keepalive for HTTP (HTTPS, HTTP/2, HTTP/3) queries, in seconds
      keepalive = 30;

      # Log level (0-6, default: 2 - 0 is very verbose, 6 only contains fatal errors)
      log_level = 0;

      # Log file for the application, as an alternative to sending logs to
      # the standard system logging service (syslog/Windows event log).
      #
      # This file is different from other log files, and will not be
      # automatically rotated by the application.
      log_file = "/dnscrypt-proxy.log";

      # When using a log file, only keep logs from the most recent launch.
      log_file_latest = true;

      # Use the system logger (syslog on Unix, Event Log on Windows)
      use_syslog = true;

      # Caching
      cache = true;
      cache_size = 4096;
      cache_min_ttl = 2400;
      cache_max_ttl = 86400;
      cache_neg_min_ttl = 60;
      cache_neg_max_ttl = 600;
    };
  };
}
