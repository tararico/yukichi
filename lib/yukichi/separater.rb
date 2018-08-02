module Yukichi
  class Separater
    def initialize(num)
      @num = num
      case num.class
      when String
        @num = num
      when Integer
        @num = num.to_arabic_numeral
      end
    end
    	    
    def to_k(money_mark = false) 
      if money_mark # moneyマークがtrueなら"円"をつける
        @num.to_chinese_numeral + "円"
      else
        @num.to_chinese_numeral
      end
    end

    def jpy_comma(money_mark = false)
      if money_mark == true
        "¥" + @num.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
      else
        @num.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
      end
    end 
  end
end
