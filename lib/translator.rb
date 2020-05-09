require "yaml"
require 'pry'

def load_library(path)
  emojis = YAML.load_file(path)
  restructured_hash = {}
  emojis.each do |key, array_emojis|
    emojis[key] = { english: array_emojis[0], japanese: array_emojis[1] }
  end 
  emojis
end

def get_japanese_emoticon
  
end

def get_english_meaning(emoji)
  dictionary = load_library
  dictionary.each do |english_meaning, translations|
    if translation[:japanese] == emoji 
      return english_meaning
    end 
  end 
end

puts load_library("./lib/emoticons.yml")