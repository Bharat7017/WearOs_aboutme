enum QrType {
  github("GitHub", "assets/qr/github_qr.jpg", "assets/icons/github.png"),

  portfolio(
      "Portfolio", "assets/qr/portfolio_qr.jpg", "assets/icons/portfolio.png"),
  linkedin(
      "Linkedin", "assets/qr/linkedin_qr.jpg", "assets/icons/linkedin.png"),
  instagram(
      "Instagram", "assets/qr/instagram_qr.jpg", "assets/icons/instagram.png"),
  twitter("Twitter", "assets/qr/twitter_qr.jpg", "assets/icons/twitter.png"),

  medium("Medium", "assets/qr/medium_qr.jpg", "assets/icons/medium.png");

  final String name;
  final String qrPath;
  final String iconPath;
  const QrType(this.name, this.qrPath, this.iconPath);
}
