module Yukichi
  class Separater
    def initialize(num)
      @num = num
    end	    
    def jpy_comma
      @num.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
    end 
  end
end
