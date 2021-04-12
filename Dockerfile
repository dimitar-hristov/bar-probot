FROM node:12-slim
#WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm ci --production
RUN npm cache clean --force
ENV NODE_ENV="production"
COPY . .
RUN pwd
#CMD [ "npm", "start" ]
#ENTRYPOINT ["./entrypoint.sh"]
#CMD ["ls", "-al"]
CMD ["pwd"]
#RUN pwd
