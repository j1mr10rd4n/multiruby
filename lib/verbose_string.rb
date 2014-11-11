class VerboseString < String

  def initialize(string)
    super string
  end

  def description
    <<-END
String content is: #{self.to_s}
From Ruby (v#{RUBY_VERSION}) - length: #{self.length}, encoding: #{self.encoding}
END
  end

end

