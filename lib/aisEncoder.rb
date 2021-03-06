# encode a binary string into ais sixbit format

module AisEncoder

  ENCODE_HASH = {
    "000000" => "@",  "000001" => "A", "000010" => "B",   "000011" => "C",
    "000100" => "D",  "000101" => "E", "000110" => "F",   "000111" => "G",
    "001000" => "H",  "001001" => "I", "001010" => "J",   "001011" => "K",
    "001100" => "L",  "001101" => "M", "001110" => "N",   "001111" => "O",
    "010000" => "P",  "010001" => "Q", "010010" => "R",   "010011" => "S",
    "010100" => "T",  "010101" => "U", "010110" => "V",   "010111" => "W",
    "011000" => "X",  "011001" => "Y", "011010" => "Z",   "011011" => "[",
    "011100" => "\\", "011101" => "]", "011110" => "\^",  "011111" => "\_",
    "100001" => " ",  "100001" => "!", "100010" => "\"",  "100011" => "\#",
    "100100" => "$",  "100101" => "%", "100110" => "&",   "100111" => "\'",
    "101000" => "(",  "101001" => ")", "101010" => "\*",  "101011" => "\+",
    "101100" => ",",  "101101" => "-", "101110" => ".",   "101111" => "/",
    "110000" => "0",  "110001" => "1", "110010" => "2",   "110011" => "3",
    "110100" => "4",  "110101" => "5", "110110" => "6",   "110111" => "7",
    "111000" => "8",  "111001" => "9", "111010" => ":",   "111011" => ";",
    "111100" => "<",  "111101" => "=", "101110" => ">",   "111111" => "?",
  }
  def encode(twoBit)
    # input binary string from SixBitDecoder
    # output ascii string according to AIVDM transformation (see above)
    idx = twoBit.length / 6
    normalString = ""
    1.upto(idx) do |i|
      a = i*6-1
      nibble = twoBit[a-5..a]
      normalString << ENCODE_HASH[nibble].to_s
    end
    return normalString.delete '@'
  end
end # module AisEncoder
