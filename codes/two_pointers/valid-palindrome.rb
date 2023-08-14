def is_palindrome(s)
  s = s.downcase.gsub(/[^a-z0-9]/, '')
  n = s.length
  (n / 2).times do |i|
    return false if s[i] != s[n - i - 1]
  end
  true
end

p is_palindrome('A man, a plan, a canal: Panama') # true
