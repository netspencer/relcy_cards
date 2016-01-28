FROM dariocravero/docker-library-padrino:onbuild

RUN apt-get update

# Intall software-properties-common for add-apt-repository
RUN apt-get install -qq -y software-properties-common

CMD bundle exec thin start
