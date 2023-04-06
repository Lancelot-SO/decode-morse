Morse_Code = {
  '.-'   => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..'  => 'D',
  '.'    => 'E',
  '..-.' => 'F',
  '--.'  => 'G',
  '....' => 'H',
  '..'   => 'I',
  '.---' => 'J',
  '-.-'  => 'K',
  '.-..' => 'L',
  '--'   => 'M',
  '-.'   => 'N',
  '---'  => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.'  => 'R',
  '...'  => 'S',
  '-'    => 'T',
  '..-'  => 'U',
  '...-' => 'V',
  '.--'  => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  return Morse_Code[char]
end

def decode_word(word)
  result =[]
  alphabets = word.split
  alphabets.map do |alphabet|
    result.push(decode_char(alphabet))
end
  return result.join()
end

def decode(message)
  words = message.split('   ')
  decoded_message = words.map do |word|
    decode_word(word)
  end
  decoded_message.join(' ')
end
puts decode_char("--..")
puts decode_word("-- -.--")
puts decode("-- -.--   -. .- -- .")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")