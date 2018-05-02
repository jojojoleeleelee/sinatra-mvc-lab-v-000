class PigLatinizer

  def piglatinize(text)
    if text.include?(" ")
      to_pig_latin(text)
    else
      binding.pry
      if w[0].scan(/[aeiouAEIOU]/).count > 0
        "#{w}way"
      elsif w[0..1].scan(/[bcdfghjklmnpqrstvwxyz]/).count > 1
          "#{w[2..-1]}#{w[0..1]}ay"
      else
          "#{w[1..-1]}#{w[0]}ay"
      end
    end
  end

  def to_pig_latin(sentence)
    sentence.split(' ').map do |w|
      if w[0].scan(/[aeiouAEIOU]/).count > 0
        "#{w}way"
      elsif w[0..1].scan(/[bcdfghjklmnpqrstvwxyz]/).count > 1
          "#{w[2..-1]}#{w[0..1]}ay"
      else
          "#{w[1..-1]}#{w[0]}ay"
      end
    end.join(" ")
  end
end
