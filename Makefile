TOPOJSON = node --max_old_space_size=8192 node_modules/.bin/topojson

COMMON_NEIGHBORHOOD_PROPERTIES = egh_public=+EGH_PUBLIC,perimeter=+PERIMETER,nbo=+NBO_,nbo_id=+NBO_ID,commplan=COMMPLAN,shared=SHARED,coalit=COALIT,check=CHECK_,horz_vert=HORZ_VERT,shape_area=+SHAPE_AREA,shape_len=+SHAPE_LEN,neighborhood
DEMOGRAPHIC_PROPERTIES_2000 = $(COMMON_NEIGHBORHOOD_PROPERTIES),+p001001,+p008003,+p008004,+p008005,+p008006,+p008007,+p008008,+p008009,+p008011,+p008012,+p008013,+p008014,+p008015,+p008016,+p008017,+p01000310,+p01000411,+p01000512,+p01000613,+p01000714,+p01000815,+p012003,+p012004,+p012005,+p012006,+p012007,+p01200810,+p012011,+p012012,+p012013,+p012014,+p012015,+p012016,+p012017,+p01201819,+p01202021,+p012022,+p012023,+p012024,+p012025,+p012027,+p012028,+p012029,+p012030,+p012031,+p01203234,+p012035,+p012036,+p012037,+p012038,+p012039,+p012040,+p012041,+p01204243,+p01204445,+p012046,+p012047,+p012048,+p012049,+p018003,+p018004,+p018007,+p018008,+p018011,+p018012,+p018014,+p018015,+p018017,+p019002,+p023002,+p027004,+p027007,+p027008,+p02701114,+p027015,+p02701720,+p027023,+p028002,+p028005,+p030002,+p030013,+p030016,+p038000422,+p038003250,+p038000826,+p038003654,+h001001,+h004002,+h004003,+h005002,+h005003,+h005004,+h005005,+h005006,+h005007,+h011002,+h011003,+arealand,+areawatr
DEMOGRAPHIC_PROPERTIES_2010 = $(COMMON_NEIGHBORHOOD_PROPERTIES),+p0010001,+p0050003,+p0050004,+p0050005,+p0050006,+p0050007,+p0050008,+p0050009,+p0050011,+p0050012,+p0050013,+p0050014,+p0050015,+p0050016,+p0050017,+p007000310,+p007000411,+p007000512,+p007000613,+p007000714,+p007000815,+p0120003,+p0120004,+p0120005,+p0120006,+p0120007,+p012000810,+p0120011,+p0120012,+p0120013,+p0120014,+p0120015,+p0120016,+p0120017,+p012001819,+p012002021,+p0120022,+p0120023,+p0120024,+p0120025,+p0120027,+p0120028,+p0120029,+p0120030,+p0120031,+p012003234,+p0120035,+p0120036,+p0120037,+p0120038,+p0120039,+p0120040,+p0120041,+p012004243,+p012004445,+p0120046,+p0120047,+p0120048,+p0120049,+p0190003,+p0190004,+p0190007,+p0190008,+p0190011,+p0190012,+p0190014,+p0190015,+p0190017,+p0200002,+p0250002,+p0290004,+p0290007,+p029000810,+p029001116,+p0290017,+p029001922,+p0290025,+p0310002,+p0310005,+p0340002,+p0340014,+p0340017,+p043000424,+p043003555,+p043000929,+p043004060,+h0010001,+h0040002,+h0040003,+h0040004,+h0050002,+h0050004,+h005000305,+h0050006,+h0050007,+h0050008,+h011000203,+h0110004,+arealand,+areawatr

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

topo/neighborhoods.json: shp/neighborhoods.shp
	mkdir -p $(dir $@)
	$(TOPOJSON) -p name=NAME,shared=SHARED,len=+SHAPE_LEN,area=+SHAPE_AREA -q 1e3 -s 0.0000000001 --id-property=+OBJECTID -- $< > $@


topo/neighborhoods-demographics-2000.json: shp/neighborhoods.shp
	mkdir -p $(dir $@)
	$(TOPOJSON) -p $(DEMOGRAPHIC_PROPERTIES_2000) \
		-q 1e3 -s 0.0000000001 \
		--external-properties static/reconciled-neighborhood-demographics-2000.csv \
		--id-property=OBJECTID,+id -- $< > $@

topo/neighborhoods-demographics-2010.json: shp/neighborhoods.shp
	mkdir -p $(dir $@)
	$(TOPOJSON) -p $(DEMOGRAPHIC_PROPERTIES_2010) \
		-q 1e3 -s 0.0000000001 \
		--external-properties static/reconciled-neighborhood-demographics-2010.csv \
		--id-property=OBJECTID,+id -- $< > $@

png/%.png: shp/%.shp bin/rasterize
	mkdir -p $(dir $@)
	node --max_old_space_size=8192 bin/rasterize $< $@
	optipng $@