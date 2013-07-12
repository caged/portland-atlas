TOPOJSON = node --max_old_space_size=8192 node_modules/.bin/topojson

all: \
	node_modules \
	gz/Bicycle_Network_pdx.zip

node_modules:
	npm install

.SECONDARY:

gz/Bicycle_Network_pdx.zip:
gz/%.zip:
	mkdir -p $(dir $@)
	curl 'ftp://ftp02.portlandoregon.gov/CivicApps/$(notdir $@)' -o $@.download
	mv $@.download $@

shp/bicycle-network.shp: gz/Bicycle_Network_pdx.zip
shp/bicycle-parking.shp: gz/bicycle_parking_pdx.zip

shp/%.shp:
	rm -rf $(basename $@)
	mkdir -p $(basename $@)
	tar -xzm -C $(basename $@) -f $<
	for file in $(basename $@)/*.shp; do \
		ogr2ogr -f 'ESRI Shapefile' -t_srs EPSG:4326 $(basename $@).$${file##*.} $$file; \
		chmod 644 $(basename $@).$${file##*.}; \
	done
	rm -rf $(basename $@)
