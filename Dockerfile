FROM node:18-alpine

WORKDIR /app

COPY . /app

RUN npm install

RUN npm run build

ENV PORT 5173

EXPOSE 5173


HEALTHCHECK CMD curl --fail http://localhost:5173 || exit 1

CMD ["npm", "run","serve"]