FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.2.2

RUN gem install bosh_vsphere_cpi --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["vsphere_cpi"]
CMD ["--help"]
