class Gas
  attr_reader :name, :regular, :medium, :premium, :diesel

  def initialize(state)
    @name = state[:result][:state][:name]
    @regular = state[:result][:state][:gasoline]
    @medium = state[:result][:state][:midGrade]
    @premium = state[:result][:state][:premium]
    @diesel = state[:result][:state][:diesel]
  end

end
