Prerequisites:
You will need to have tmux, coreutils (timeout), and jq installed to execute the following steps. They can all be instaled via homebrew.

`brew install tmux`
`brew install coreutils`
`brew install jq`

Steps:
* Go to <ruby playground>/logging_rails61_stackprof
* git pull
* change newrelic config app name (james/tanna) without committing the change
* ./dockerbuild
* ./dockerrun bash
  ^-- type 'exit' to leave Docker, container will automatically be discarded
* tmux
* (commands ran in tmux session 0)
    * rm config/newrelic.yml
    * ln -s config/newrelic_phase<DESIRED PHASE>.yml config/newrelic.yml
    * bundle install
    * export RAILS_ENV=production
    * bundle exec rails assets:precompile
    * DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:drop
    * DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:setup
    * bundle exec rails server
* CTRL-b c    # creates a new tmux session, #1
* (commands ran in tmux session 1)
    * ./timedtester <SECONDS>
* CTRL-b p    # switches back to tmux session #0
    * CTRL-c    # stops Rails
    * ./cleanup <DESIRED PHASE>
      ^-- creates results/phase<DESIRED PHASE> directory with tmp/ and log/ subdirectories
* Type 'exit' to close the tmux sessions
* To collect the results:
  * bundle exec stackprof results/phase<DESIRED PHASE>/tmp/stackprof-wall-*.dump
  * stackprof can be installed using `gem install stackprof` if it isn't part of your application
