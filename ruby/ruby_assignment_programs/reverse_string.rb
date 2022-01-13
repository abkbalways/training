class Program
  def revers(str)
    len =str.length
    if(len==0 || str=="")
      return str
    end
    --len
    return revers(str[1..len])+str.chr
  end
end

p=Program.new;
puts p.revers('Rahul Dixit')

