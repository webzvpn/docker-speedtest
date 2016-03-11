FROM alpine:3.3
RUN apk add --update python
ADD https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py /usr/local/bin/speedtest-cli
RUN chmod +x /usr/local/bin/speedtest-cli
ADD test.sh /usr/local/bin/test.sh
ENV SERV_NAME TEST
ENV STATSD_HOST 192.168.59.103
ENV STATSD_PORT 8125
ENV FREQUENCY 300
CMD ["sh /usr/local/bin/test.sh"]
