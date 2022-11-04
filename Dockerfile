FROM node:18.11.0-alpine3.16
LABEL author "Wes Lambert, wlambertts@gmail.com"
LABEL author jl2168
LABEL description="Dockerised version of Cyberchef server (https://github.com/gchq/CyberChef-server)"
LABEL copyright "Crown Copyright 2020"
LABEL license "Apache-2.0"
WORKDIR /CyberChef-server
COPY . /CyberChef-server
RUN node -v
RUN npm -v
RUN npm cache clean --force && \
         npm install /CyberChef-server
EXPOSE 3000
ENTRYPOINT ["npm", "--prefix", "/CyberChef-server", "run", "prod"]
