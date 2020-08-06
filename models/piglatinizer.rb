class PigLatinizer
  attr_reader :string 
  
  def initialize(string)
    @string=string
  end
  
  def piglatinize
    words = string.split(" ")
    list=[]
    words.each do |m|
      vowels=m.scan(/[aeoui]/)
        vowindex=m.index(vowels[0])
        n=m.split("")
        if vowindex==0
          pigword=n.push(["w","a","y"]).join
        else
            i=0
            while i<vowindex do
              a=n.shift
              pigword1=n.push(a)
              pigword=pigword1.push(["a","y"]).join
            i+=1
            end
        end
        list.push(pigword)
      end
      list.join(',')
  end
end