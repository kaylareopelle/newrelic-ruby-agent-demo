require 'new_relic/agent/method_tracer'

# Ensures the Pokemon model is available
# documentation: https://api.rubyonrails.org/classes/ActiveSupport/Reloader.html#method-c-to_prepare
ActiveSupport::Reloader.to_prepare do
  Pokemon.class_eval do
    include ::NewRelic::Agent::MethodTracer

    class << Pokemon
      # Add method tracer to a static/class method
      add_method_tracer :pikachu, 'Custom/Pokemon/pikachu'
    end
    # Add method tracer to an instance method
    add_method_tracer :jigglypuff, 'Custom/Pokemon/jigglypuff'
  end
end
