TOPOJSON = node node_modules/.bin/topojson
OREGON_NORTH_SRS = 'EPSG:2913'

node_modules:
	npm install

.SECONDARY:

################################################################################
#	ARCHIVES
################################################################################
gz/historic/Trolley_All.zip:
	mkdir -p $(dir $@)
	curl --remote-time 'http://www.upa.pdx.edu/IMS/currentprojects/TAHv3/GIS_Data/Portlands_People/$(notdir $@)' -o $@.download
	mv $@.download $@

gz/metro/%.zip:
	mkdir -p $(dir $@)
	curl -L --remote-time 'http://library.oregonmetro.gov/rlisdiscovery/$(notdir $@)' -o $@.download
	mv $@.download $@

gz/trimet/%.zip:
	mkdir -p $(dir $@)
	curl -L --remote-time 'http://developer.trimet.org/gis/data/$(notdir $@)' -o $@.download
	mv $@.download $@

gz/osm/%.zip:
	mkdir -p $(dir $@)
	curl --remote-time 'http://osm-extracted-metros.s3.amazonaws.com/$(notdir $@)' -o $@.download
	mv $@.download $@

gz/dropbox/%.zip:
	mkdir -p $(dir $@)
	curl -L --remote-time 'https://dl.dropboxusercontent.com/u/602885/open-data/$(notdir $@)' -o $@.download
	mv $@.download $@

gz/%.zip:
	mkdir -p $(dir $@)
	curl --remote-time 'ftp://ftp02.portlandoregon.gov/CivicApps/$(notdir $@)' -o $@.download
	mv $@.download $@

################################################################################
#	SHAPEFILES: CITY OF PORTLAND
################################################################################
shp/bicycle-network.shp: gz/Bicycle_Network_pdx.zip
shp/bicycle-parking.shp: gz/bicycle_parking_pdx.zip
shp/bridges.shp: gz/Bridge_pdx.zip
shp/business-associations.shp: gz/Business_Associations_pdx.zip
shp/lid-boundaries.shp: gz/LID_Boundaries_pdx.zip
shp/cip-data.shp: gz/CIP_Data.zip
shp/city-boundaries.shp: gz/City_metro.zip
shp/corners.shp: gz/Corners_pdx.zip
shp/counties.shp: gz/County_metro.zip
shp/curbs.shp: gz/Curb_pdx.zip
shp/curb-ramps.shp: gz/Curb_Ramp_pdx.zip
shp/development-opportunity-areas.shp: gz/Development_Opp_Areas_pdx.zip
shp/contours-5ft.shp: gz/Contours_5ft_metro.zip
shp/enterprise-ecommerce-zone.shp: gz/Enterprise_ECommerce_Zone_pdx.zip
shp/freight-districts.shp: gz/Freight_Districts_pdx.zip
shp/freight-facilities.shp: gz/Freight_Facilities_pdx.zip
shp/guardrail.shp: gz/Guardrail_pdx.zip
shp/heritage-trees.shp: gz/Heritage_Trees_pdx.zip
shp/homebuyer-opportunity-areas.shp: gz/LTA_HomeBuyer_Opportunity_Areas_pdx.zip
shp/intermodal-facilities.shp: gz/Intermodal_Facilities_pdx.zip
shp/its-camera.shp: gz/its_camera_pdx.zip
shp/its-sign.shp: gz/its_sign_pdx.zip
shp/leaf-pickup.shp: gz/Leaf_Pickup_pdx.zip
shp/neighborhoods.shp: gz/Neighborhoods_pdx.zip
shp/parking-meters.shp: gz/Parking_Meter_pdx.zip
shp/parks.shp: gz/Parks_pdx.zip
shp/parks-desired-future-cond.shp: gz/Parks_Desired_Future_Cond_pdx.zip
shp/parks-easements.shp: gz/Parks_Easements_pdx.zip
shp/parks-taxlots.shp: gz/Parks_Taxlots_pdx.zip
shp/parks-trails.shp: gz/Parks_Trails_pdx.zip
shp/parks-vegetation-surveys.shp: gz/Parks_Vegetation_Surveys_pdx.zip
shp/pavement-maint.shp: gz/Pavement_PMS_pdx.zip
shp/pavemoratorium.shp: gz/Pavemoratorium.zip
shp/pedestrian-districts.shp: gz/Pedestrian_Districts_pdx.zip
shp/percent-slope.shp: gz/Percent_Slope_pdx.zip
shp/sidewalks.shp: gz/Sidewalk_pdx.zip
shp/signage-lighting-improvement-program.shp: gz/Signage_Lighting_Imp_Prog_pdx.zip
shp/snow-ice-routes.shp: gz/PDOT_Snow_Ice_Routes_pdx.zip
shp/storefront-improvement-areas.shp: gz/Storefront_Imp_Areas_pdx.zip
shp/streets.shp: gz/Streets_pdx.zip
shp/street-contract-jobs-line.shp: gz/Contract_Jobs_line_pdx.zip
shp/street-contract-jobs-multipoint.shp: gz/Contract_Jobs_multipoint_pdx.zip
shp/portland-streets-permit-jobs-line.shp: gz/Permit_Jobs_Line_pdx.zip
shp/portland-streets-permit-jobs-point.shp: gz/Permit_Jobs_Point_pdx.zip
shp/portland-streets-permit-jobs-polygon.shp: gz/Permit_Jobs_Polygon_pdx.zip
shp/lid-streets.shp: gz/LID_Streets_pdx.zip
shp/street-sweeping.shp: gz/Portland_Street_Sweeping.zip
shp/street-trees.shp: gz/Street_Trees_pdx.zip
shp/traffic-calming.shp: gz/traffic_calming_pdx.zip
shp/traffic-signal.shp: gz/traffic_signal_pdx.zip
shp/portland-transit-stations.shp: gz/Transit_Stations.zip
shp/tsp-classifications.shp: gz/TSP_Classifications_pdx.zip
shp/tsp-district-boundaries.shp: gz/TSP_District_Boundaries_pdx.zip
shp/urban-renewal-areas.shp: gz/Urban_Renewal_Areas_pdx.zip
shp/vegetation.shp: gz/vegetation_pdx.zip
shp/watersheds.shp: gz/Watersheds_Web_BES_pdx.zip
shp/wellhead-prot-areas.shp: gz/Wellhead_Prot_Areas_pdx.zip
shp/zipcodes.shp: gz/Zipcode_metro.zip
shp/zoning-data.shp: gz/Zoning.zip

################################################################################
#	SHAPEFILES: OREGON METRO
################################################################################
shp/buildings.shp: gz/metro/buildings.zip
shp/blockgroup-1990.shp: gz/metro/blockgrp1990.zip
shp/blockgroup-2000.shp: gz/metro/blockgrp2000.zip
shp/blockgroup-2010.shp: gz/metro/blockgrp2010.zip
shp/urban-growth-boundary.shp: gz/metro/ugb.zip
shp/urban-growth-boundary-history.shp: gz/metro/ugb_history.zip
shp/water.shp: gz/metro/mjriv_fi.zip

################################################################################
#	SHAPEFILES: TRIMET
################################################################################
shp/trimet-boundary.shp: gz/trimet/tm_boundary.zip
shp/trimet-park-and-rides.shp: gz/trimet/tm_parkride.zip
shp/trimet-rail-stops.shp: gz/trimet/tm_rail_stops.zip
shp/trimet-rail-lines.shp: gz/trimet/tm_rail_lines.zip
shp/trimet-routes.shp: gz/trimet/tm_routes.zip
shp/trimet-stops.shp: gz/trimet/tm_stops.zip
shp/trimet-route-stops.shp: gz/trimet/tm_route_stops.zip
shp/trimet-transit-centers.shp: gz/trimet/tm_tran_cen.zip

################################################################################
#	SHAPEFILES: OPENSTREETMAP
################################################################################
shp/osm.shp: gz/osm/portland.osm2pgsql-shapefiles.zip
	rm -rf $(basename $@)
	mkdir -p $(basename $@)
	tar --exclude="._*" -xzm -C $(basename $@) -f $<

	mv $(basename $@)/* shp
	rm -rf $(basename $@)

################################################################################
#	SHAPEFILES: CUSTOM/DROPBOX
#
# Rehosted public data not available on the web or data that's difficult
# to access as a result of cumbersome UIs or other burdensome reasons
################################################################################
shp/school-attendance-areas.shp: gz/dropbox/school-attendance-areas.zip # (school districts)

################################################################################
# SHAPEFILES: PDX.EDU
################################################################################
shp/historic-trolleys.shp: gz/historic/Trolley_All.zip
	rm -rf $(basename $@)
	mkdir -p $(basename $@)
	tar -xzm -C $(basename $@) -f $<

	find $(basename $@) -name 'Alberta*' -exec mv '{}' $(dir $@) \;

	for file in shp/historic-trolleys/*.shp; do \
		ogr2ogr -dim 2 -f 'ESRI Shapefile' -update -append $(dir $@)Alberta.shp $$file; \
	done

	ogr2ogr -dim 2 -f 'ESRI Shapefile' -t_srs EPSG:4326 $@ $(dir $@)Alberta.shp

	rm -rf $(basename $@)
	rm $(dir $@)Alberta.*

################################################################################
# SHAPEFILES: SECOND-STAGE SIMPLIFIED
################################################################################

# Freeway, highway, primary arterial, secondary arterial and major residential
shp/streets-major.shp: shp/streets.shp
	ogr2ogr -where 'TYPE IN (1110, 1200, 1300, 1400, 1450)' $@ $<

# Simplified portland-only buildings
shp/buildings/portland.shp: shp/buildings.shp
	mkdir -p $(dir $@)
	ogr2ogr -dialect sqlite \
		-sql "select BLDG_ID, ST_UNION(Geometry), \
					case lower(BLDG_USE) \
					when 'commercial general'         then 'commercial' \
					when 'commercial grocery'         then 'retail' \
					when 'commercial hotel'           then 'hotel' \
					when 'commercial office'          then 'office' \
					when 'commercial restaurant'      then 'commercial' \
					when 'commercial retail'          then 'retail' \
					when 'industrial'                 then 'industrial' \
					when 'institutional religious'    then 'church' \
					when 'multi family residential'   then 'apartments' \
					when 'parking'                    then 'garage' \
					when 'single family residential'  then 'residential' \
					else NULL \
					end as BLDG_USE \
					from buildings \
					where SUBAREA = 'City of Portland' \
					group by BLDG_ID, BLDG_USE" $@ $<

################################################################################
# SHAPEFILES: META
################################################################################
shp/%.shp:
	rm -rf $(basename $@)
	mkdir -p $(basename $@)
	tar --exclude="._*" -xzm -C $(basename $@) -f $<

	for file in `find $(basename $@) -name '*.shp'`; do \
		ogr2ogr -dim 2 -f 'ESRI Shapefile' -t_srs 'EPSG:4326' $(basename $@).$${file##*.} $$file; \
		chmod 644 $(basename $@).$${file##*.}; \
	done
	rm -rf $(basename $@)

################################################################################
# CSV
################################################################################
csv/crime-latest.csv: gz/crime_incident_data.zip
	rm -rf $(basename $@)
	mkdir -p $(basename $@)

	echo '<OGRVRTDataSource> \
		<OGRVRTLayer name="$(notdir $(basename $@))"> \
			<SrcDataSource>$(@F)</SrcDataSource> \
			<GeometryType>wkbPoint</GeometryType> \
			<LayerSRS>EPSG:2913</LayerSRS> \
			<GeometryField encoding="PointFromColumns" x="X Coordinate" y="Y Coordinate"/> \
			<Field name="id" src="Record ID" /> \
			<Field name="date" src="Report Date" /> \
			<Field name="time" src="Report Time" /> \
			<Field name="offense type" src="Major Offense Type" /> \
			<Field name="address" src="Address" /> \
			<Field name="neighborhood" src="Neighborhood" /> \
			<Field name="precinct" src="Police Precinct" /> \
			<Field name="district" src="Police District" /> \
		</OGRVRTLayer> \
	</OGRVRTDataSource>' > $(@D)/$(notdir $(basename $@)).vrt

	tar -xzm -C $(basename $@) -f $<
	mv $(basename $@)/*.csv $(basename $@).csv
	rm -rf $(basename $@)

	cd $(dir $@) && ogr2ogr -overwrite -f CSV -lco GEOMETRY=AS_XY -t_srs EPSG:4326 $(notdir $(basename $@))-wgs84.csv $(notdir $(basename $@)).vrt
	rm $(basename $@).vrt

csv/crime-%.csv: gz/crime_incident_data_%.zip
	rm -rf $(basename $@)
	mkdir -p $(basename $@)

	echo '<OGRVRTDataSource> \
		<OGRVRTLayer name="$(notdir $(basename $@))"> \
			<SrcDataSource>$(@F)</SrcDataSource> \
			<GeometryType>wkbPoint</GeometryType> \
			<LayerSRS>EPSG:2913</LayerSRS> \
			<GeometryField encoding="PointFromColumns" x="X Coordinate" y="Y Coordinate"/> \
			<Field name="id" src="Record ID" /> \
			<Field name="date" src="Report Date" /> \
			<Field name="time" src="Report Time" /> \
			<Field name="offense type" src="Major Offense Type" /> \
			<Field name="address" src="Address" /> \
			<Field name="neighborhood" src="Neighborhood" /> \
			<Field name="precinct" src="Police Precinct" /> \
			<Field name="district" src="Police District" /> \
		</OGRVRTLayer> \
	</OGRVRTDataSource>' > $(@D)/$(notdir $(basename $@)).vrt

	tar -xzm -C $(basename $@) -f $<
	mv $(basename $@)/*.csv $(basename $@).csv
	rm -rf $(basename $@)

	cd $(dir $@) && ogr2ogr -overwrite -f CSV -lco GEOMETRY=AS_XY -t_srs EPSG:4326 $(notdir $(basename $@))-wgs84.csv $(notdir $(basename $@)).vrt
	rm $(basename $@).vrt

################################################################################
# TOPOJSON
################################################################################
topo/crime-%.json: csv/crime-%.csv
	mkdir -p $(dir $@)
	$(TOPOJSON) -x "X Coordinate" -y "Y Coordinate" -- $< > $@

topo/historic-trolleys.json: shp/historic-trolleys.shp
	mkdir -p $(dir $@)
	$(TOPOJSON) -q 1e3 -s 9e-9 -p street=STREET,year=+Year_,notes=Notes -- $< > $@

topo/streets-ungrouped.json: shp/streets-major.shp
	mkdir -p $(dir $@)
	${TOPOJSON} \
		-o $@ \
		--no-pre-quantization \
		--simplify=1e-7 \
		--id-property=FULL_NAME \
		-p length=LENGTH \
		-- $<

topo/streets.json: topo/streets-ungrouped.json
	mkdir -p $(dir $@)
	node_modules/.bin/topojson-group \
		-o $@ \
		-- $<

topo/projected/buildings.json: shp/buildings/portland.shp
topo/projected/parks.json: shp/parks.shp
topo/projected/streets.json: topo/streets.json

topo/projected/%.json:
	mkdir -p $(dir $@)
	$(TOPOJSON) \
    --width 960 \
    --height 800 \
    --margin 20 \
    -s .50 \
    -o $@ \
    -- $<

################################################################################
# PNG
################################################################################
png/%.png: shp/%.shp bin/rasterize
	mkdir -p $(dir $@)
	node bin/rasterize $< $@
	pngnq -f -n 256 -s 10 -Q f -e ".png" $@
