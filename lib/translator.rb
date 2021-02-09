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
end

def get_english_meaning
  # code goes here
end