{
  programs.firefox = {
      enable = true;
      profiles.default = {
          settings = {
              "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
              "browser.newtabpage.activity-stream.feeds.topsites" = false;
              "browser.newtabpage.activity-stream.showWeather" = false;
          };
      };
  };
}