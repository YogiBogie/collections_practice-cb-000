def sort_array_asc(array)
  return array.sort { |a,b| a <=> b}
end

def sort_array_desc(array)
  return array.sort { |a,b| b <=> a}
end

def sort_array_char_count(array)
  return array.sort { |a,b| a.length <=> b.length}
end

def swap_elements(array)
  a = array[1]
  array[1] = array[2]
  array[2] = a
  return array
end

def swap_elements_from_to(array, index, destination)
  a = array[index]
  array[index] = array[destination]
  array[destination] = a
  return array
end

def reverse_array(array)
  return array.reverse!
end

def kesha_maker(array)
  a = []

  array.each do |x|
    b = []
    b = x.split("")
    b[2] = "$"
    a << b.join
  end

  return a
end

def find_a(array)
  array.select do |x|
    x.start_with?("a")
  end
end

def sum_array(array)
  array.inject(0) {|a,b| a + b}
end

def add_s(array)
  array.each_with_index.collect do |x, index|
    if x != array[1]
      x << "s"
    end
  end
  
  return array
end
