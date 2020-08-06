class PigLatinizer
  attr_reader :string 
  
  def initialize(string)
    @string=string
  end
  
  def piglatinize
     words = @string.split(" ")
     words.each do |m|
       m.scan(/[aeoui]/)
     end
  end

end