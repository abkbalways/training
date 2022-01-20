a = [1, 2, 3]
begin 
  ind = 2
  raise RuntimeError , "index i" if ind>1    
             # If We want to raise custom error by itself
rescue RuntimeError=> e
  puts e.message
end

