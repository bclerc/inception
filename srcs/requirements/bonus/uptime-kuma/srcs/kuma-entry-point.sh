
if [ -z "$(ls data)" ]; then
	npm run setup
fi
node  server/server.js