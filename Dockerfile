FROM fabiokung/cedar
MAINTAINER hone

# need autoconf 2.69 for compiling ruby 2.1+
RUN curl -O http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz && tar xzf autoconf-2.69.tar.gz && cd autoconf-2.69 && ./configure && make && make install && cd .. && rm -rf autoconf-2.69*
RUN apt-get install subversion -y
