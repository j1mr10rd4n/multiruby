require 'verbose_string/verbose_string'

class VerboseString

  def description
    ["String content is: #{self.to_s}",  self.description_from_ruby, self.description_from_c, ""].join("\n")
  end

  protected

  def description_from_ruby
    "From Ruby (v#{RUBY_VERSION}) - length: #{self.length}, encoding: #{self.encoding}"
  end

end

