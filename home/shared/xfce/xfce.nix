{ config, ... }:

{
  xdg.configFile."xfce4/helpers.rc" = { source = ./xfce4/helpers.rc; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xsettings.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xsettings.xml; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-appfinder.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-appfinder.xml; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml; force = true; };
  xdg.configFile."xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml" = { source = ./xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml; force = true; };
}
