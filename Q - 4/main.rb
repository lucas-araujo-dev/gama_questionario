class Action
  def initialize(type)
    @type = type
  end

  def call
    puts "Executa ação #{@type}"
  end
end


p Action.new('Tipo 1').call
