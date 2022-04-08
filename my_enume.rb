module MyEnumerable

def all?(&block)
  each { |item| return false unless yield item }
    true
  end

def any?(&block)
  each { |item| return true if yield item }
    false
  end

def filter?(&block)
  array = []
  each { |item| array << item if yield item }
  array
  end   
end
