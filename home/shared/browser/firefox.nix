{ pkgs, ... }:

let
  lock-false = {
    Value = false;
    Status = "locked";
  };
in {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-esr;

    # See https://mozilla.github.io/policy-templates/
    policies = {
      Homepage = { URL = "https://gensimone.github.io/startpage"; Locked = true; };
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      BlockAboutProfiles = true;
      DNSOverHTTPS = { Enabled = false; ProviderURL = ""; Locked = true; ExcludeDomains = []; Fallback = true; };
      DisableFirefoxAccounts = true;
      DisableFirefoxScreenshots = true;
      DisableFirefoxStudies = true;
      DisablePasswordReveal = true;
      DisablePocket = true;
      DisablePrivateBrowsing = false;
      DisableProfileImport = true;
      DisableProfileRefresh = true;
      DisableSetDesktopBackground = true;
      DisableTelemetry = true;
      DisplayBookmarksToolbar = "never";
      DisplayMenuBar = "default-off";
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = { Cryptomining = true; Fingerprinting = true; Locked = true; Value= true; };
      FirefoxHome = { Search = false; TopSites = false; SponsoredTopSites = false; Highlights = false; Pocket = false; SponsoredPocket = false; Snippets = false; Locked = false; };
      FirefoxSuggest = { WebSuggestions = false; SposoredSuggestions = false; ImproveSuggest = false; Locked = true; };
      HardwareAcceleration = true;
      HttpsOnlyMode = "force_enabled";
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      OfferToSaveLoginsDefault = false;
      OverrideFirstRunPage = "";
      OverridePostUpdatePage = "";
      PDFjs = false;
      PasswordManagerEnabled = false;
      PopupBlocking = { Allow = []; Default = true; Locked = true; };
      PromptForDownloadLocation = false;
      SearchBar = "unified";
      SearchEngines = { Default = "DuckDuckGo"; PreventInstalls = true; SearchSuggestEnabled = false; Remove = [ "Bing" "Google" "Ecosia" "Qwant" "Wikipedia (en)" "Bookmarks" "Tabs" "History" ]; };
      StartDownloadsInTempDirectory = true;
      UserMessaging = { ExtensionsRecommendations = false; FeaturesRecomendations = false; UrlbarIntervensions = false; SkipOnboarding = true; MoreFromMozilla = false; FirefoxLabs = false;  Locked = true; };
      ShowHomeButton = false;
      SkipTermOfUse = true;
      TranslateEnabled = false;

      # See about:config
      # They are not working for some reason
      Preferencies = {
        "browser.urlbar.placeholderName" = "Nothing";
        "browser.urlbar.suggest.addons" = lock-false;
        "browser.urlbar.suggest.calculator" = lock-false;
        "browser.urlbar.suggest.clipboard" = lock-false;
        "browser.urlbar.suggest.engines" = lock-false;
        "browser.urlbar.suggest.fakespot" = lock-false;
        "browser.urlbar.suggest.mdn" = lock-false;
        "browser.urlbar.suggest.openpage" = lock-false;
        "browser.urlbar.suggest.pocket" = lock-false;
        "browser.urlbar.suggest.quickactions" = lock-false;
        "browser.urlbar.suggest.quicksuggest.sposored" = lock-false;
        "browser.urlbar.suggest.recentsearches" = lock-false;
        "browser.urlbar.suggest.remotetab" = lock-false;
        "browser.urlbar.suggest.searches" = lock-false;
        "browser.urlbar.suggest.topsites" = lock-false;
        "browser.urlbar.suggest.trending" = lock-false;
        "browser.urlbar.suggest.weather" = lock-false;
        "browser.urlbar.suggest.yelp" = lock-false;
      };

      # See about:debugging#/runtime/this-firefox
      ExtensionSettings = with builtins;
        let extension = shortId: uuid: {
          name = uuid;
          value = {
            install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
            installation_mode = "normal_installed";
          };
        };
        in listToAttrs [
          (extension "ublock-origin"              "uBlock0@raymondhill.net")
          (extension "bitwarden-password-manager" "{446900e4-71c2-419f-a6a7-df9c091e268b}")
          (extension "clearurls"                  "{74145f27-f039-47ce-a470-a662b129930a}")
          (extension "vimium-ff"                  "{d7742d87-e61d-4b78-b8a1-b469842139fa}")
          (extension "minimal-youtube-extension"  "{74062023-cdb1-45a3-9fc8-b5255259e4a0}")
        ];
    };
  };
}
