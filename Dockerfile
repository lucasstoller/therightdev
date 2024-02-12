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

ARG RAILS_MASTER_KEY
ENV RAILS_MASTER_KEY="${RAILS_MASTER_KEY}"

# Create master.key file and write RAILS_MASTER_KEY to it
RUN echo "${RAILS_MASTER_KEY}" > config/credentials/master.key
RUN echo "${RAILS_MASTER_KEY}" > master.key

# Conditionally precompile Rails assets
RUN if [ "$RAILS_ENV" = "production" ]; then bundle exec rake assets:precompile; fi

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["rails", "server", "-b", "0.0.0.0"]