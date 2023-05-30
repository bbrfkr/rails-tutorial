FROM ruby:3.1.4
RUN bundle install
ENTRYPOINT ["rails"]
CMD ["server", "-p", "8080", "-b", "0.0.0.0"]
