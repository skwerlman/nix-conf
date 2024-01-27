# based on w3samiulazim's garuda-starship theme
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      username = {
        format = " [╭─$user]($style)@";
        style_user = "bold red";
        style_root = "bold red";
      };

      hostname = {
        format = "[$hostname]($style) in ";
        style = "bold dimmed red";
        trim_at = "-";
        ssh_only = false;
        disabled = false;
      };

      directory = {
        style = "purple";
        truncation_length = 0;
        truncate_to_repo = true;
        truncation_symbol = "repo: ";
      };

      git_status = {
        style = "white";
        ahead = "⇡\${count}";
        diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
        behind = "⇣\${count}";
        deleted = "x";
      };

      cmd_duration = {
        min_time = 1;
        format = "took [$duration]($style)";
        disabled = false;
      };

      battery = {
        full_symbol = " ";
        charging_symbol = " ";
        discharging_symbol = " ";
        disabled = true;
        display = [
          {
            threshold = 15;
            style = "bold red";
            disabled = true;
          }
          {
            threshold = 50;
            style = "bold yellow";
            disabled = true;
          }
          {
            threshold = 80;
            style = "bold green";
            disabled = true;
          }
        ];
      };

      time = {
        format = " 🕙 $time($style)\n";
        time_format = "%T";
        style = "bright-white";
        disabled = true;
      };

      character = {
        success_symbol = " [╰─λ](bold red)";
        error_symbol = " [×](bold red)";
      };

      aws = {
        symbol = "  ";
        disabled = true;
      };

      conda = {
        symbol = " ";
      };

      dart = {
        symbol = " ";
      };

      docker_context = {
        symbol = " ";
        format = "via [$symbol$context]($style) ";
        style = "blue bold";
        only_with_files = true;
        detect_files = [ "docker-compose.yml" "docker-compose.yaml" "Dockerfile" ];
        detect_folders = [ ];
        disabled = false;
      };

      elixir = {
        symbol = " ";
      };

      elm = {
        symbol = " ";
      };

      gcloud = {
        disabled = true;
      };

      git_branch = {
        symbol = " ";
      };

      golang = {
        symbol = " ";
      };
      hg_branch = {
        symbol = " ";
      };

      java = {
        symbol = " ";
      };

      julia = {
        symbol = " ";
      };

      haskell = {
        symbol = "λ ";
      };

      memory_usage = {
        symbol = " ";
      };

      nim = {
        symbol = " ";
      };

      nix_shell = {
        symbol = " ";
      };

      package = {
        symbol = " ";
      };

      perl = {
        symbol = " ";
      };

      php = {
        symbol = " ";
      };

      python = {
        symbol = " ";
        #pyenv_version_name = true
        format = "via [\${symbol}python (\${version} )(\($virtualenv\) )]($style)";
        style = "bold yellow";
        pyenv_prefix = "venv ";
        python_binary = [ "./venv/bin/python" "python" "python3" "python2" ];
        detect_extensions = [ "py" ];
        version_format = "v\${raw}";
      };

      ruby = {
        symbol = " ";
      };

      rust = {
        symbol = " ";
      };

      scala = {
        symbol = " ";
      };

      shlvl = {
        symbol = " ";
      };

      swift = {
        symbol = "ﯣ ";
      };

      nodejs = {
        format = "via [ Node.js $version](bold green) ";
        detect_files = [ "package.json" ".node-version" ];
        detect_folders = [ "node_modules" ];
      };
    };
  };
}
