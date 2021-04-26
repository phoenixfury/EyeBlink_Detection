FROM python:3

WORKDIR /app

COPY . /app

RUN apt-get update

RUN apt-get -y install libc-dev

RUN apt-get install -y build-essential

RUN pip install --upgrade pip

RUN apt-get update && apt-get install -y --no-install-recommends \
    libopencv-dev \
    python3-opencv \
    cmake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install setuptools

RUN pip install --trusted-host pypi.python.org -r requirements.txt

ENV NAME World

ENTRYPOINT ["python", "-m", "detect_blinks.py"]


