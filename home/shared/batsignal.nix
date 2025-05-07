{ ... }:

{
  services.batsignal = {
    enable = true;
    extraArgs = [
      "-w 15"  # warning level
      "-c 10"  # critical level
      "-d 5"   # danger level
      "-f 100" # full level
      "-p"     # show a message when the battery begins chargin or discharging
    ];
  };
}
