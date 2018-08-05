require 'yukichi/version'
require 'yukichi/separater'
require 'yukchi/kanji'

class Yukichi
  include Yukichi::Separater
  include Yukichi::Kanji
  def initialize(num)
    @num = num
    case num.class
    when Integer
      @num = num
    when String
      @num = num.to_arabic_numeral
    end
  end
end
