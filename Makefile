TOPOJSON = node --max_old_space_size=8192 node_modules/.bin/topojson

all: \
	node_modules \
	gz/Bicycle_Network_pdx.zip

node_modules:
	npm install

.SECONDARY:
