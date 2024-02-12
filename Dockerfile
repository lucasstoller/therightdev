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

# Make port 8080 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["rails", "server", "-b", "0.0.0.0"]