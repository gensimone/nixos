{ pkgs, ... }:

{
  home.packages = with pkgs; [
    python3                   # High-level dynamically-typed programming language
    pyright                   # Type checker for the Python language
    pipx                      # Install and run Python applications in isolated environments
    poetry                    # Python dependency management and packaging made easy
    python312Packages.ipython # IPython: Productive Interactive Computing
  ];

  home.file.".ipython/profile_default/ipython_config.py".source = ./ipython_config.py;
}
