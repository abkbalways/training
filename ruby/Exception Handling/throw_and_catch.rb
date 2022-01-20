def ab()
  10.times do |x|
    10.times do |y|
      throw :finish if (x + y) == 2
      puts x + y
    end
  end
  puts "I am not printed"
end

  catch :finish do ab()
  end