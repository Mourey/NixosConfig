{ inputs, ... }: {
  programs.firefox = {
    enable = true;
    profiles.hotrod = {

      bookmarks = [
        {
          name = "Gmail";
          tags = [ "google" ];
          keyword = "gmail";
          url = "https://mail.google.com";
        }

        {
          name = "Google Calendar";
          tags = [ "google" ];
          keyword = "calendar";
          url = "https://calendar.google.com";
        }

        {
          name = "Youtube";
          tags = [ "google" ];
          keyword = "youtube";
          url = "https://www.youtube.com";
        }

        {
          name = "Chat GPT";
          tags = [ "AI" ];
          keyword = "Chat GPT";
          url = "https://chatgpt.com/";
        }
      ];

      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
        ublock-origin
        bitwarden
        sponsorblock
        darkreader
        tridactyl
        youtube-shorts-block
      ];
    };
  };
}
