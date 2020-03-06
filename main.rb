def max_multiplication string
  return nil unless string.is_a? String

  count = 0
  max_sequence = []
  current_sequence = []

  string.split('').each do |s|
    if s.delete('^0-9').empty?
      max_sequence = current_sequence if max_sequence.size < count
      count = 0
      current_sequence = []
    else
      current_sequence << s.to_i
      count += 1
    end  
  end
  max_sequence = current_sequence if current_sequence.size > max_sequence.size
  max_sequence.reduce(max_sequence.first, :*)  
end

def sort array
  array.sort_by { |n| n.to_s(2).count('1') }
end

string = 'abc12345def'
array = [3,7,8,9]

p max_multiplication string
p sort array
