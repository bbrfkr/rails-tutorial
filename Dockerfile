FROM ruby:3.1.4
COPY . /src
WORKDIR /src
RUN bundle install
ENTRYPOINT ["rails"]
CMD ["server", "-p", "8080", "-b", "0.0.0.0"]
