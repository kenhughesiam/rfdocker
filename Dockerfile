# https://github.com/asyrjasalo/rfdocker
# https://hub.docker.com/r/robotframework/rfdocker

FROM robotframework/rfdocker:3.0.4

RUN apk add --no-cache \
    udev \
    chromium \
    chromium-chromedriver \
    xvfb \
    libexif



COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Chrome requires docker to have cap_add: SYS_ADMIN if sandbox is on.
# Disabling sandbox and gpu as default.

COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16

# with this entrypoint the Selenium tests pass but we cant get the output files... headless Permissions...
#ENTRYPOINT [ "/opt/bin/entry_point.sh" ]
