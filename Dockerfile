ARG ruby_version=2.7

FROM ruby:$ruby_version

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends jq npm tmux vim
RUN npm install -g yarn

WORKDIR /app

CMD ["ls"]
