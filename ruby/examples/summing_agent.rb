require "ruby_eve"


class SummingAgent < RubyEve::Agent
  def sum(a,b)
    a + b
  end
end

agent = SummingAgent.new
agent.start