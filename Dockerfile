FROM nachochip/ffmpeg

RUN mkdir -p /videos
ADD . /code
RUN chmod 755 /code/converter.sh

ENTRYPOINT ["/code/converter.sh"]
