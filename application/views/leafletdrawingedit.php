<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

li {
  float: left;
}

li a {
  display: block;
  padding: 8px;
  background-color: #dddddd;
}
#map {
    height: 400px;
}
</style>
<ul>
  <li><a href="<?php echo base_url(); ?>">Home</a></li>
  <li><a href="<?php echo base_url(); ?>/leafletdrawinghasil">Hasil GeoJSON-Mysql</a></li>
  
</ul>
<br>
<div id="map"></div>
<div id='result' value=''></div>

<button id="convert"> Simpan GeoJson </button>
<br>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet.draw/0.4.2/leaflet.draw.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet.draw/0.4.2/leaflet.draw.js"></script>

<script>
var map = L.map('map').setView([-6.584492, 106.806725], 13);
     L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
         attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
     }).addTo(map);

     var drawnItems = new L.FeatureGroup();
     map.addLayer(drawnItems);
     var drawControl = new L.Control.Draw({
         edit: {
             featureGroup: drawnItems
         }
     });
     map.addControl(drawControl);


<?php foreach ($json as $key ) { ?>
  var drawnItems = L.geoJson(<?php echo $key->GeoJson; ?>).addTo(map);
<?php } ?>


map.on('draw:created', function (event) {
    var layer = event.layer,
        feature = layer.feature = layer.feature || {};
    
    feature.type = feature.type || "Feature";
    var props = feature.properties = feature.properties || {};
    drawnItems.addLayer(layer);
    
});

document.getElementById("convert").addEventListener("click", function () {
    var hasil = $('#result').html(JSON.stringify(drawnItems.toGeoJSON()));
    var cookieValue = document.getElementById('result').innerHTML;
    
    if (cookieValue === '{"type":"FeatureCollection","features":[]}') {
      alert("Empty...!");
    } else {
    	ajax_simpan();
    }
});
function ajax_simpan(){
	var	url = "<?php echo site_url('Leafletdrawingedit/edit'); ?>";
	var hasil = (JSON.stringify(drawnItems.toGeoJSON()));
	$.ajax({
		url : url,
		type: "POST",
		data: {result:hasil, Id:<?php echo $Id; ?>},
		beforeSend: function(s){
			
			$('#result').html('tunggu');
		},
		success: function(data)
		{
			$('#result').html('berhasil');
		}
	});
}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>