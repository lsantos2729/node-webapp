FROM node:lts-slim

EXPOSE 3000
WORKDIR /home/lsantos/node-webapp
RUN <<EOF
npm install
EOF

COPY . /home/node/app

CMD ["npm", "start"]
