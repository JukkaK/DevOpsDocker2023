# Original use for this dockerfile was to test running github action task in a container. 
#The original image was copied from a public repo and then modified slightly by yours truly.

ARG PYTHON_VERSION="3.7.6"
FROM python:$PYTHON_VERSION-slim-buster

LABEL description="Robot Framework in a Python 3 slim-buster based Docker image"

ARG UNAME="robot"
ARG GNAME="robot"
ARG UHOME="/home/robot"
ARG HOST_UID=1000
ARG HOST_GID=1000
ARG SHELL="/bin/bash"

RUN addgroup --system \
 --gid ${HOST_GID} \
 ${GNAME}

RUN adduser --system \
 --uid ${HOST_UID} \
 --ingroup ${GNAME} \
 --disabled-password \
 --home ${UHOME} \
 --shell ${SHELL} \
 ${UNAME}

USER ${UNAME}
WORKDIR ${UHOME}

ENV VIRTUAL_ENV=${UHOME}/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip3 install --no-cache-dir --upgrade pip

ARG RF_VERSION="3.1.2"
ARG ALPINE_GLIBC="2.30-r0"
ARG CHROMIUM_VERSION="79.0"
ARG DATABASE_LIBRARY_VERSION="1.2"
ARG FAKER_VERSION="4.3.0"
ARG FIREFOX_VERSION="71.0"
ARG FTP_LIBRARY_VERSION="1.8"
ARG GECKO_DRIVER_VERSION="v0.26.0"
ARG IMAP_LIBRARY_VERSION="0.3.0"
ARG PABOT_VERSION="0.96"
ARG REQUESTS_VERSION="0.6.2"
ARG SELENIUM_LIBRARY_VERSION="4.1.0"
ARG SSH_LIBRARY_VERSION="3.4.0"
ARG XVFB_VERSION="1.20"

RUN pip3 install --no-cache-dir robotframework==$RF_VERSION \
  robotframework-databaselibrary==$DATABASE_LIBRARY_VERSION \
  robotframework-faker==$FAKER_VERSION \
  robotframework-ftplibrary==$FTP_LIBRARY_VERSION \
  robotframework-imaplibrary==$IMAP_LIBRARY_VERSION \
  robotframework-pabot==$PABOT_VERSION \
  robotframework-requests==$REQUESTS_VERSION \
  robotframework-seleniumlibrary==$SELENIUM_LIBRARY_VERSION \
  robotframework-sshlibrary==$SSH_LIBRARY_VERSION \
  PyYAML 

ENTRYPOINT ["python3", "-m", "robot.run", "--outputdir", "results"]