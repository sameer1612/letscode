def encode(words = [])
  words.map { |word| to_ascii word }.join('#')
end

def to_ascii(word)
  word.each_char.map { |char| char.ord }.join('_')
end

def from_ascii(word)
  word.split('_').map { |char| char.to_i.chr }.join
end

def decode(sentence = '')
  sentence.split('#').map { |word| from_ascii word }
end

source = %w[we say _ yes]
code = encode(source)
p 'Source: ', source
puts ''
p 'Encoded: ', code
puts ''
p 'Decoded: ', decode(code)
