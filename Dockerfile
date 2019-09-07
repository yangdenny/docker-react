FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install 
<<<<<<< HEAD
COPY . .
RUN npm run build

FROM nginx 
COPY --from=builder /app/build /usr/share/nginx/html
=======
COPY . . 
RUN npm run build

FROM nginx 
EXPOSE 80
COPY --from=builder /app/build /urs/share/nginx/html
>>>>>>> 9674a2868f40eda2d4393ba8131fba14016b4a2d
