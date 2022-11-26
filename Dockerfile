FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install && mv node_modules ../
COPY . .
EXPOSE 80 443 3000 8000 2222

RUN apk add --no-cache openssh \
  && echo "root:Docker!" | chpasswd
# COPY ./sshd_config /etc/ssh/

# RUN chown -R node /usr/src/app
# USER node
CMD /usr/src/app/startup.sh