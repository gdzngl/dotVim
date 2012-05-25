#!/usr/bin/ruby
require 'fileutils'

unless File.exists?("bundle") then
  FileUtils.mkdir("bundle")
end

addons = []
files = File.join("bundle", "*")
allfiles = Dir.glob(files)

 
repos = [
  "https://github.com/tpope/vim-vividchalk.git",
  "https://github.com/janx/vim-rubytest.git",
  "https://github.com/ervandew/supertab.git",
  "https://github.com/tpope/vim-markdown.git",
  "https://github.com/scrooloose/nerdtree.git",
  "https://github.com/tpope/vim-fugitive.git",
  "https://github.com/tpope/vim-rails.git",
  #"https://github.com/tpope/vim-haml.git",
  #"https://github.com/tpope/vim-surround.git",
  "https://github.com/tpope/vim-endwise.git",
  "https://github.com/tpope/vim-pathogen.git",
  "https://github.com/mrtazz/simplenote.vim.git",
  "https://github.com/davidoc/taskpaper.vim.git",
  "https://github.com/Townk/vim-autoclose.git",
  "https://github.com/tpope/vim-speeddating.git",
  "https://github.com/scrooloose/nerdcommenter.git"
]

for item in repos do
  plugin = item.split("/")[-1]
  plugin = plugin.split(".git")[0]
  addons << plugin
end

for directory in addons do
  path = File.join("bundle", directory)
  if File.exists?(path)
    FileUtils.cd(path)
    puts "--- #{directory} ---"
    puts `git pull`
    FileUtils.cd("..")
    FileUtils.cd("..")
  else
    FileUtils.cd("bundle")
    puts `git clone #{repos[addons.index(directory)]}`
    FileUtils.cd("..")
  end
end

