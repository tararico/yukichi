require 'yukichi/version'
require 'yukichi/separater'
require 'yukichi/kanji'

class Yukichi
  include Yukichi::Separater
  include Yukichi::Kanji
  def initialize(num)
    case num.class
    when Integer
      @num = num
    when String
      @num = num.to_arabic_numeral
      raise @num
    end
  end
end
