FROM registry.access.redhat.com/ubi8/nodejs-16 
RUN npm info
COPY . .
RUN npm install -g yarn
RUN yarn install --ignore-scripts
RUN npm install --ignore-scripts
RUN npm run build
RUN dir
