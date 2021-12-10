FROM node:16.13.1

COPY . /app
WORKDIR /app

RUN  yarn global add nuxt && \
     yarn global add vue-cli create-nuxt-app && \
     yarn install

ENV HOST 0.0.0.0
EXPOSE 3000
CMD ["yarn", "run", "dev"]