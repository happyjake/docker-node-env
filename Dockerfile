FROM gliderlabs/alpine
RUN apk --update add make python nodejs zeromq-dev g++ zlib-dev util-linux-dev
RUN mkdir /workspace
WORKDIR /workspace
COPY package.json /workspace/
RUN npm install -g node-gyp iced-coffee-script
RUN npm install .
