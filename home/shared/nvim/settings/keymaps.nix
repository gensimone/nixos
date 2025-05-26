{ ... }:

{
  programs.nvf.settings.vim.keymaps = [
    # navigate vim panes better
    { key = "<c-k>"; mode = "n"; action = ":wincmd k<CR>"; }
    { key = "<c-j>"; mode = "n"; action = ":wincmd j<CR>"; }
    { key = "<c-h>"; mode = "n"; action = ":wincmd h<CR>"; }
    { key = "<c-l>"; mode = "n"; action = ":wincmd l<CR>"; }

    # resize panes
    { key = "<S-j>"; mode = "n"; action = "<cmd>resize +2<CR>"; desc = "Increase window height"; }
    { key = "<S-k>"; mode = "n"; action = "<cmd>resize -2<CR>"; desc = "Decrease window height"; }
    { key = "<S-h>"; mode = "n"; action = "<cmd>vertical resize +2<CR>"; desc = "Increase window width"; }
    { key = "<S-l>"; mode = "n"; action = "<cmd>vertical resize -2<CR>"; desc = "Decrease window width"; }

    # navigate buffer
    { key = "<leader>n"; mode = "n"; action = ":bn<CR>"; desc = "Next buffer"; }
    { key = "<leader>p"; mode = "n"; action = ":bp<CR>"; desc = "Previous buffer"; }
    { key = "<leader>c"; mode = "n"; action = ":bd<CR>"; desc = "Close buffer"; }

    # various
    { key = "<leader>q"; mode = "n";       action = ":q<CR>"; }
    { key = "<leader>y"; mode = ["n" "v"]; action = ''"+y''; }
    { key = "<esc>";     mode = "n";       action = ":noh<CR>"; }

    # telescope
    { key = "<leader>fr"; mode = "n"; action = ":Telescope oldfiles<CR>";    desc = "Recent Files"; }
    { key = "<leader>fg"; mode = "n"; action = ":Telescope live_grep<CR>";   desc = "Live Grep"; }
    { key = "<leader>fn"; mode = "n"; action = ":Telescope notify<CR>";      desc = "Notifications"; }
    { key = "<leader>fb"; mode = "n"; action = ":Telescope buffers<CR>";     desc = "Buffers"; }
    { key = "<leader>fw"; mode = "n"; action = ":Telescope grep_string<CR>"; desc = "Grep String"; }
    { key = "<leader>ff"; mode = "n"; action = ":Telescope find_files<CR>";  desc = "Find Files [CWD]"; }
    { key = "<leader>fh"; mode = "n"; action = ":Telescope find_files search_dirs={\"~\"}<CR>";  desc = "Find Files [Home]"; }
    { key = "<leader>fc"; mode = "n"; action = ":Telescope find_files search_dirs={\"~/sources/personal/nixos\"}<CR>"; desc = "Find Files [NixOS]"; }
    { key = "<leader>fm"; mode = "n"; action = ":Telescope man_pages sections=ALL<CR>";     desc = "Man Pages"; }

    # terminal
    { key = "tt"; mode = "n"; action = ":ToggleTerm<CR>";    desc = "Toggle Terminal"; }

    # gitsigns
    { key = "<leader>hl"; mode = "n"; action = ":Gitsigns setqflist all<CR>";    desc = "Show hunks"; }
    { key = "th"; mode = "n"; action = ":Gitsigns toggle_linehl<CR>";    desc = "Highlight new lines"; }
    { key = "th"; mode = "n"; action = ":Gitsigns toggle_linehl<CR>";    desc = "Highlight new lines"; }
  ];
}
