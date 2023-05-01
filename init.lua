
---@diagnostic disable-next-line: unused-local
local jkglobal = require'jkglobal'
local opt = vim.opt
local pkgs = require'pkgs'
local keys = require'keys'

vim.g.mapleader = ' '

pkgs.std.plugins:insert[[RRethy/nvim-align]]
pkgs.vs.plugins:insert[[RRethy/nvim-align]]

local pkgsetup = jk.vs and pkgs.vs or pkgs.std
pkgsetup:setup()

local keysetup = jk.vs and keys.vs or keys.std
keysetup:init()

opt.clipboard:append([[unnamedplus]])