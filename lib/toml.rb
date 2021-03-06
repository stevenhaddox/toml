$:.unshift(File.dirname(__FILE__))

require 'time'
require 'parslet'

require 'toml/key'
require 'toml/key_group'
require 'toml/parslet'
require 'toml/transformer'
require 'toml/parser'
require 'toml/generator'
# Don't do monkey-patching by default. Only pulled in by TOML::Generator
# if needed (see generator.rb line 27).
# require 'toml/monkey_patch

module TOML
  VERSION = '0.0.2'

  def self.load(content)
    Parser.new(content).parsed
  end

  def self.load_file(path)
    Parser.new(File.read(path)).parsed
  end
end