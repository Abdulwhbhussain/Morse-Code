# Morse Code Converter
# Morse Code Hash

def decode_char(string_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0'
  }
  morse_code[string_char]
end

def decode_word(string_word)
  word = ''
  string_word.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode(string)
  string.split('   ').map do |word|
    decode_word(word).strip
  end.join(' ')
end

puts decode('.... . .-.. .-.. ---   .-- --- .-. .-.. -..')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')