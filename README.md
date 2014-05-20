## Portland Atlas

* Easily download and convert public GIS (shapefile) data for Portland, Oregon.
* Generate [TopoJSON](https://github.com/mbostock/topojson) for Portland Neigborhoods, combined with 2000 and 2010 [demographic data](http://www.portlandoregon.gov/oni/28387).
* Generate png images from shapefiles


This project was inspired by [world-atlas](https://github.com/mbostock/world-atlas).


### Install

```
npm install portland-atlas
```

### Examples

```
make shp/neighborhoods.shp
make topo/neighborhoods.json
make topo/neighborhoods-demographics.json
make png/neighborhoods.png
```

... | ... | ... |...
:---: | :---: | :---: | :---:
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/bicycle-network.shp.png) **bicycle network** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/bicycle-parking.shp.png) **bicycle parking** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/blockgroup-1990.png) **blockgroup 1990** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/blockgroup-2000.png) **blockgroup 2000**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/blockgroup-2010.png) **blockgroup 2010** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/bridges.shp.png) **bridges** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/building-footprints.shp.png) **building footprints** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/business-associations.shp.png) **business associations**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/cip-data.shp.png) **cip data** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/city-boundaries.shp.png) **city boundaries** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/contours-5ft.shp.png) **contours 5ft** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/corners.shp.png) **corners**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/counties.shp.png) **counties** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/curb-ramps.shp.png) **curb ramps** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/curbs.shp.png) **curbs** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/development-opportunity-areas.shp.png) **development opportunity areas**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/enterprise-ecommerce-zone.shp.png) **enterprise ecommerce zone** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/freight-districts.shp.png) **freight districts** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/freight-facilities.shp.png) **freight facilities** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/guardrail.shp.png) **guardrail**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/heritage-trees.shp.png) **heritage trees** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/historic-trolleys.png) **historic trolleys** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/homebuyer-opportunity-areas.shp.png) **homebuyer opportunity areas** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/intermodal-facilities.shp.png) **intermodal facilities**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/its-camera.shp.png) **its camera** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/its-sign.shp.png) **its sign** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/leaf-pickup.shp.png) **leaf pickup** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/lid-boundaries.shp.png) **lid boundaries**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/lid-streets.shp.png) **lid streets** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/neighborhoods.shp.png) **neighborhoods** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/osm-line.png) **osm line** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/osm-point.png) **osm point**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/osm-polygon.png) **osm polygon** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/parking-meters.shp.png) **parking meters** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/parks-easements.shp.png) **parks easements** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/parks-taxlots.shp.png) **parks taxlots**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/parks-trails.shp.png) **parks trails** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/parks-vegetation-surveys.shp.png) **parks vegetation surveys** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/parks.shp.png) **parks** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/pavement-maint.shp.png) **pavement maint**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/pavemoratorium.shp.png) **pavemoratorium** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/pedestrian-districts.shp.png) **pedestrian districts** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/percent-slope.shp.png) **percent slope** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/portland-streets-permit-jobs-line.shp.png) **portland streets permit jobs line**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/portland-streets-permit-jobs-point.shp.png) **portland streets permit jobs point** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/portland-streets-permit-jobs-polygon.shp.png) **portland streets permit jobs polygon** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/portland-transit-stations.shp.png) **portland transit stations** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/portland-tsp-classifications.shp.png) **portland tsp classifications**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/portland-tsp-district-boundaries.shp.png) **portland tsp district boundaries** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/school-attendance-areas.png) **school attendance areas** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/sidewalks.shp.png) **sidewalks** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/signage-lighting-improvement-program.shp.png) **signage lighting improvement program**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/snow-ice-routes.shp.png) **snow ice routes** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/storefront-improvement-areas.shp.png) **storefront improvement areas** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/street-contract-jobs-line.shp.png) **street contract jobs line** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/street-contract-jobs-multipoint.shp.png) **street contract jobs multipoint**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/street-sweeping.shp.png) **street sweeping** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/street-trees.shp.png) **street trees** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/streets.shp.png) **streets** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/traffic-calming.shp.png) **traffic calming**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/traffic-signal.shp.png) **traffic signal** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-boundary.png) **trimet boundary** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-park-and-rides.png) **trimet park and rides** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-rail-lines.png) **trimet rail lines**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-rail-stops.png) **trimet rail stops** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-route-stops.png) **trimet route stops** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-routes.png) **trimet routes** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-stops.png) **trimet stops**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/trimet-transit-centers.png) **trimet transit centers** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/urban-growth-boundary.png) **urban growth boundary** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/urban-renewal-areas.shp.png) **urban renewal areas** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/water.png) **water**  
![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/watersheds.shp.png) **watersheds** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/wellhead-prot-areas.shp.png) **wellhead prot areas** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/zipcodes.shp.png) **zipcodes** | ![](https://raw.githubusercontent.com/Caged/portland-atlas/master/png/zoning-data.shp.png) **zoning data**  
