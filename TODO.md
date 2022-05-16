# TODOS!

- [X] Create db/seeds.rb script that pulls Pokemon data from the PokeApi
- [x] Create migration with our new values

change_table :pokemon do |t|
  t.string :sprite
  t.rename :level, :hp
end

- [X] Add stylesheet for basic looks
- [ ] Create APM with Logs demo

# Demos

* How to install the agent (Hannah)
- Manual Install route on our website
- Install in Gemfile and download newrelic.yml from GitHub
* Custom instrumentation/attributes
-
* NRQL Workshop (Chuck)

* APM with Logs
- Generate logs
- Example in Errors Inbox
- Example in Distributed Tracing -> Spans
- Configuration options (forwarding, local decorating)

* Async with Ruby Agent
- Example of external requests in threads viewed in Distributed Tracing
- Note that configuration is required: instrumentation.thread.tracing: true

* OTel with Ruby
- Not currently recommended in conjunction with the Ruby agent
- Instruments other features
- Show unique UI elements for OTel 

* Method-level telemetry (last option)
- Double check next week
- Open IDE with controller
- Show the signals
- Click on the graphs

* Bonus content from Chuck's talk
- He will share next week
