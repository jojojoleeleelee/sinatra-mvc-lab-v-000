class PigLatinizer

  def piglatinize(text)
    if text.match(/\s/)
      to_pig_latin(@text)
    else
      if text.match(/^[aeiouAEIOU]\w+/) != true
        case text
        when text.match(/^[aeiouAEIOU][aeiouAEIOU]\w+/) != true
          "#{text[2..-1]}#{text[0..1]}ay"
        else
          "#{text[1..-1]}#{text[0]}ay"
        end
      else
        "#{text}way"
      end
    end
  end

  def to_pig_latin(sentence)
    # binding.pry
    text.split(' ').map do |w|
      if text.match(/^[aeiouAEIOU]/) != true
        case text
        when text.match(/^[aeiouAEIOU][aeiouAEIOU]\w+/) != true
          "#{text[2..-1]}#{text[0..1]}ay"
        else
          "#{text[1..-1]}#{text[0]}ay"
        end
      else
        "#{text}way"
      end
    end
  end
end
