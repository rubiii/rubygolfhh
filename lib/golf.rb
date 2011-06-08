class Golf
  class << self

    def hole1(n)
      n.inject(:*)
    end
    
    def hole2(l)
      l[0].upto(l[1]).select {|s| s.to_s.reverse == s.to_s}
    end
    
    def hole6(n)
      (1..n).map {|i|
        i % 15 == 0 ? "fizzbuzz" : i % 3 == 0 ? "fizz" : i % 5 == 0 ? "buzz" : i
      }
    end
    
    def hole4(s)
        s.map {|s|s.gsub(/man\((.*)\)/, 'hat(man(\1))').gsub(/dog\((.*)\)/, 'dog(\1(bone))').gsub(/cat/,'dead')  }
    end
    
    def hole3(s)
      s.reverse.downcase == s.downcase
    end
    
    def hole5(l)
      r = []
      1.upto(l.size).each {|n| 1.upto(l.size-n+1).each{|m|r <<  l.slice(m-1,n) } }
      r
    end
    
    def hole7(l)
      r=[]
      f =l[0]
      g =l[0]
      l.slice(1,l.size-1).each(){|x|x ==g+1 ? g=x : (r << [f,g]; f=x;g=x)}
      r
    end
    
    def hole8(n)
      (1..n).map { |i| f(i) }
    end
    
    def f(n)
      return 1 if n < 3
      f(n-1) + f(n-2)
    end
  end
end
