# Ruby implementation of [Eve Agents](http://eve.almende.com/)

This is a simple Ruby implementation of Eve agents. It depends on the [Jimson](https://github.com/chriskite/jimson) JSON-RPC library.

## Installation

Add this line to your application's Gemfile:

    gem 'ruby_eve'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_eve

## Usage

### Creating your own agent
Subclass the RubyEve::Agent class and define your methods. These methods will automatically be available via JSON-RPC.

```ruby
class SummingAgent < RubyEve::Agent
  def sum(a,b)
    a + b
  end
end

agent = SummingAgent.new
agent.start # Start the webbrick webserver and listen for requests.
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/ruby_eve/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
