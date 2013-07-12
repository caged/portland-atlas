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
shp/development-opportunity-areas.shp: gz/Development_Opportunity_Areas_pdx.zip

shp/contours-5ft.shp: gz/Contours_5ft_pdx.zip
shp/enterprise-ecommerce-zone.shp: gz/Enterprise_ECommerce_Zone_pdx.zip
shp/freight-districts.shp: gz/Freight_Districts_pdx.zip
shp/freight-facilities.shp: gz/Freight_Facilities_pdx.zip
shp/guardrail.shp: gz/guardrail_pdx.zip
shp/heritage-trees.shp: gz/Heritage_Trees_pdx.zip
shp/homebuyer-opportunity-areas.shp: gz/HomeBuyer_Opportunity_Areas_pdx.zip
shp/intermodal-facilities.shp: gz/Intermodal_Facilities_pdx.zip
shp/its-camera.shp: gz/its_camera_pdx.zip
shp/its-sign.shp: gz/its_sign_pdx.zip
shp/leaf-pickup.shp: gz/Leaf_Pickup_pdx.zip
shp/neighborhoods.shp: gz/Neighborhoods_pdx.zip
shp/parking-meters.shp: gz/Parking_Meters_pdx.zip
shp/parks.shp: gz/Parks_pdx.zip
shp/parks-desired-future-cond.shp: gz/Parks_Desired_Future_Cond_pdx.zip
shp/parks-easements.shp: gz/Parks_Easements_pdx.zip
shp/parks-taxlots.shp: gz/Parks_Taxlots_pdx.zip
shp/parks-trails.shp: gz/Parks_Trails_pdx.zip
shp/parks-vegetation-surveys.shp: gz/Parks_Vegetation_Surveys_pdx.zip
shp/pavement-maint.shp: gz/Pavement_Maint_pdx.zip
shp/pavemoratorium.shp: gz/Pavemoratorium_pdx.zip
shp/pedestrian-districts.shp: gz/Pedestrian_Districts_pdx.zip
shp/percent-slope.shp: gz/Percent_Slope_pdx.zip
shp/sidewalks.shp: gz/Sidewalks_pdx.zip
shp/signage-lighting-improvement-program.shp: gz/Signage_Lighting_Improvement_Program_pdx.zip
shp/snow-ice-routes.shp: gz/Snow_Ice_Routes_pdx.zip
shp/storefront-improvement-areas.shp: gz/Storefront_Improvement_Areas_pdx.zip
shp/streets.shp: gz/Streets_pdx.zip
shp/street-contract-jobs-line.shp: gz/Street_Contract_Jobs_line_pdx.zip
shp/street-contract-jobs-multipoint.shp: gz/Street_Contract_Jobs_multipoint_pdx.zip
shp/portland-streets-permit-jobs-line.shp: gz/Portland_Streets_Permit_Jobs_Line.zip
shp/portland-streets-permit-jobs-point.shp: gz/Portland_Streets_Permit_Jobs_Point.zip
shp/portland-streets-permit-jobs-polygon.shp: gz/Portland_Streets_Permit_Jobs_Polygon.zip
shp/lid-streets.shp: gz/LID_Streets_pdx.zip
shp/street-sweeping.shp: gz/Street_Sweeping_pdx.zip
shp/street-trees.shp: gz/Street_Trees_pdx.zip
shp/traffic-calming.shp: gz/traffic_calming_pdx.zip
shp/traffic-signal.shp: gz/traffic_signal_pdx.zip
shp/portland-transit-stations.shp: gz/Portland_Transit_Stations.zip
shp/portland-tsp-classifications.shp: gz/Portland_TSP_Classifications.zip
shp/portland-tsp-district-boundaries.shp: gz/Portland_TSP_District_Boundaries.zip
shp/urban-renewal-areas.shp: gz/Urban_Renewal_Areas_pdx.zip
# This links is broken on the cities website
shp/vegetation.shp: gz/vegetation_pdx.zip
shp/watersheds.shp: gz/Watersheds_pdx.zip
shp/wellhead-prot-areas.shp: gz/Wellhead_Prot_Areas_pdx.zip
shp/zipcodes.shp: gz/Zipcodes_pdx.zip
shp/zoning-data.shp: gz/Zoning_Data_pdx.zip

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