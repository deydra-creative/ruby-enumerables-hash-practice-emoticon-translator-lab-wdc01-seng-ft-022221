# require modules here

def load_library
  library = YAML.load_file(filepath)
  lang_keys = [:english, :japanese]
  library.map do |meaning, emoticons| 
    library[meaning] = Hash[lang_keys.zip(emoticons)]
  end 
  library
end

def get_japanese_emoticon
  emoticon_hash = load_library(file_path)
  japanese_emoji = "Sorry, that emoticon was not found"
  emoticon_hash.each do |name, lang_hash|
    if emoticon == lang_hash[:english] 
        japanese_emoji = lang_hash[:japanese]
    end
  end
  japanese_emoji
end

def get_english_meaning
  emoticon_hash = load_library(file_path)
  english_name = "Sorry, that emoticon was not found"
  emoticon_hash.each do |name, lang_hash|
    if emoticon == lang_hash[:japanese]
      english_name = name
    end
  end
  english_name
end