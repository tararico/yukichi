require 'convert_numeral'

module Kanji
  def to_k(money_mark = false)
    if money_mark
      @num.to_chinese_numeral + "円"
    else
      @num.to_chinese_numeral
    end
  end
end