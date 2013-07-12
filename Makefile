TOPOJSON = node --max_old_space_size=8192 node_modules/.bin/topojson


node_modules:
	npm install

.SECONDARY:

gz/%.zip:
	mkdir -p $(dir $@)
	curl 'ftp://ftp02.portlandoregon.gov/CivicApps/$(notdir $@)' -o $@.download
	mv $@.download $@

shp/bicycle-network.shp: gz/Bicycle_Network_pdx.zip
shp/bicycle-parking.shp: gz/bicycle_parking_pdx.zip
shp/bridges.shp: gz/Bridges_pdx.zip
shp/business-associations.shp: gz/Business_Associations_pdx.zip
shp/lid-boundaries.shp: gz/LID_Boundaries_pdx.zip
shp/cip-data.shp: gz/CIP_Data_pdx.zip
shp/corners.shp: gz/Corners_pdx.zip
shp/counties.shp: gz/Counties_pdx.zip
shp/curbs.shp: gz/Curbs_pdx.zip
shp/curb-ramps.shp: gz/Curb_Ramps_pdx.zip

# TODO: These gets clipped when creating a PNG.  Find out how to automatically
# scale paths to fit in bounds using d3.geo.
shp/city-boundaries.shp: gz/Cities_pdx.zip
shp/buildings-footprints.shp: gz/Building_Footprints_pdx.zip


shp/%.shp:
	rm -rf $(basename $@)
	mkdir -p $(basename $@)
	tar -xzm -C $(basename $@) -f $<
	for file in $(basename $@)/*.shp; do \
		ogr2ogr -f 'ESRI Shapefile' -t_srs EPSG:4326 $(basename $@).$${file##*.} $$file; \
		chmod 644 $(basename $@).$${file##*.}; \
	done
	rm -rf $(basename $@)

png/%.png: shp/%.shp bin/rasterize
	mkdir -p $(dir $@)
	node --max_old_space_size=8192 bin/rasterize $< $@
	optipng $@