require "pry"
require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  japanese = {}
  english = {}

  emoticons.each do |meaning, faces|
      english[faces[0]] = faces[1]
      japanese[faces[1]] = meaning
  end

  {"get_emoticon" => english, "get_meaning" => japanese}
end

def get_japanese_emoticon(path, emoticon)
  emo = load_library(path)["get_emoticon"][emoticon]
  if !emo
    "Sorry, that emoticon was not found"
  else
    emo
  end
end

def get_english_meaning(path, emoticon)
  emo = load_library(path)["get_meaning"][emoticon]
  if !emo
    "Sorry, that emoticon was not found"
  else
    emo
  end
end
