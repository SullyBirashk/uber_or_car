class Gas
  attr_reader :name, :regular

  def initialize(state)
    @name = state[:name]
    @regular = state[:gasoline]
  end
end
