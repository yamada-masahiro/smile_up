class String

  def my_prettify
    dup.my_prettify!
  end

  def my_prettify!
    gsub!(/　+/, ' ')
    strip!
    gsub!(/\s\s+/, ' ')
    self
  end
end
