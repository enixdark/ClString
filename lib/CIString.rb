require "CIString/version"
require "byebug"
module CIString

  def self.sub_downcase(text, from, to)
    result = ""
    for i in from..to 
      result += text[i].downcase
    end

    return result

  end

  def self.match(text, subtext = "")
    result = []
    if subtext.length == 0 || text.length < subtext.length
      return "<no matches>"
    end
    _end = text.length - subtext.length + 1
    sub_end = subtext.length

    for index in 0.._end - 1
      if(self.sub_downcase(text,index,sub_end-1) == subtext.downcase)
        result << index + 1
      end
      sub_end += 1
    end

    return result.length == 0 ?  "<no matches>" : result.join(', ')
    
  end
end
