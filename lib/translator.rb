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
   library = load_library(filepath)
   japanese_emoji = "Sorry, that emoticon was not found"
  emoticon_hash.each do |name, lang_hash|
    if emoticon == lang_hash[:english] 
        japanese_emoji = lang_hash[:japanese]
    end
  end
  japanese_emoji
end

def get_english_meaning
  # code goes here
end