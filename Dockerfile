# Use the official lightweight Ruby image.
# https://hub.docker.com/_/ruby
FROM ruby:2.5-slim

# Install production dependencies.
WORKDIR /usr/src/app
COPY Gemfile ./

RUN bundle install

# Copy local code to the container image.
COPY . ./

# Run the web service on container startup.
CMD ["ruby", "./app.rb"]
