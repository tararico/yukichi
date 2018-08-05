require 'convert_numeral'

class Yukichi
  module Separater
    def jpy_comma(money_mark = false)
      if money_mark == true
        "¥" + @num.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
      else
        @num.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')
      end
    end
  end
end
