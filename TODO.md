# TODOS!

- [X] Create db/seeds.rb script that pulls Pokemon data from the PokeApi
- [x] Create migration with our new values

change_table :pokemon do |t|
  t.string :sprite
  t.rename :level, :hp
end

- [ ] Add stylesheet for basic looks
- [ ] Create APM with Logs demo

# Demos

* How to install the agent
* Custom instrumentation/attributes
* NRQL Workshop (Chuck)
* APM with Logs
* OTel with Ruby
* Async with Ruby Agent
* Method-level telemetry (last option)
* Infrastructure Agent (?)

