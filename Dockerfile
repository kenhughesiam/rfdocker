# https://github.com/asyrjasalo/rfdocker
# https://hub.docker.com/r/robotframework/rfdocker

FROM robotframework/rfdocker:3.0.4

#RUN apk add -U --no-cache gcc build-base linux-headers ca-certificates python3-dev libffi-dev libxslt-dev openssl-dev
RUN apk add -U --no-cache gcc build-base ca-certificates python3-dev libffi-dev libxslt-dev openssl-dev
COPY requirements.txt .
RUN pip install --upgrade --no-cache-dir -r requirements.txt
