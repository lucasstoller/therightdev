# Use an official base image
FROM ruby:3.1.2

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY Gemfile* ./

# Install any needed packages
RUN bundle install

# Bundle app source
COPY . .

# Set RAILS_ENV environment variable
ARG RAILS_ENV
ENV RAILS_ENV=${RAILS_ENV:-development}
ENV SECRET_KEY_BASE="${SECRET_KEY_BASE}"

# Conditionally precompile Rails assets
RUN if [ "$RAILS_ENV" = "production" ]; then bundle exec rake assets:precompile; fi

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["rails", "server", "-b", "0.0.0.0"]