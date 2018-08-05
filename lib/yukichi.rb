require 'yukichi/version'
require 'yukichi/separater'
require 'yukichi/kanji'

class Yukichi
  include Yukichi::Separater
  include Yukichi::Kanji
  def initialize(num)
    case num
    when Integer
      @num = num
    when String
      @num = num.to_arabic_numeral
    end
  end
end
