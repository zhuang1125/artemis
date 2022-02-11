FROM registry.access.redhat.com/ubi8/nodejs-16 
RUN yum install wget -y 
RUN cd /opt & wget https://nodejs.org/dist/v17.5.0/node-v17.5.0-linux-x64.tar.xz  &  tar -xJvf node-v17.5.0-linux-x64.tar.xz -C /opt & export PATH=/opt/node-$VERSION-$DISTRO/bin:$PATH
RUN npm info
COPY . .
RUN npm install -g yarn
RUN yarn install --ignore-scripts
RUN npm install --ignore-scripts
RUN npm run build
RUN dir
