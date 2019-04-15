FROM mhart/alpine-node:11 AS buildapp
WORKDIR /app
COPY . /app
RUN yarn run build

FROM mhart/alpine-node
RUN yarn global add serve
WORKDIR /app
COPY --from=buildapp /app/build .
CMD ["serve", "-p", "4000", "-s", "."]
