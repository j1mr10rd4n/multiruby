class VerboseString

  def initialize(string)
    raise ArgumentError.new unless string.is_a? String
  end

end

