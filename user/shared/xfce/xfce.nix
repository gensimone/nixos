{ config, ... }:

{
  xdg.configFile."xfce4/helpers.rc".source = ./xfce4/helpers.rc;
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xsettings.xml".source = ./xfce4/xfconf/xfce-perchannel-xml/xsettings.xml;
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml".source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml;
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-appfinder.xml".source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-appfinder.xml;
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml".source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml;
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml".source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml;
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml".source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml;

  # [Mutable] Keyboard shortcuts
  # xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml".source = config.lib.file.mkOutOfStoreSymlink
  # /home/simone/.config/nixos/user/shared/xfce/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml;

  # [Mutable] Xfwm4 settings
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml".source = config.lib.file.mkOutOfStoreSymlink
  /home/simone/.config/nixos/user/shared/xfce/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml;
}
