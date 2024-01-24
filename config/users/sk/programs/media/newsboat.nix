{
  programs.newsboat = {
    enable = true;
    autoReload = true;
    reloadTime = 15;
    browser = "vivaldi";
    urls = [
      {
        url = "https://archlinux.org/feeds/news/";
        title = "Arch Linux News & Updates";
        tags = [
          "linux"
          "arch"
        ];
      }
      {
        url = "https://about.gitlab.com/atom.xml";
        title = "Gitlab Blog";
        tags = [
          "gitlab"
        ];
      }
      {
        url = "https://about.gitlab.com/security-releases.xml";
        title = "Gitlab Security Updates";
        tags = [
          "gitlab"
          "security"
        ];
      }
    ];
  };
}
