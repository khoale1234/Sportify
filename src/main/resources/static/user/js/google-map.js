var google;

function init() {
    // Tọa độ Đại học Quốc tế
    var myLatlng = new google.maps.LatLng(10.870, 106.803); // Latitude và Longitude của Đại học Quốc tế

    var mapOptions = {
        zoom: 15, 
        center: myLatlng,
        scrollwheel: false,
        styles: [
            {
                "featureType": "administrative.country",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "hue": "#ff0000"
                    }
                ]
            }
        ]
    };

    // Lấy phần tử HTML chứa bản đồ
    var mapElement = document.getElementById('map');

    // Tạo bản đồ Google Map với các tùy chọn trên
    var map = new google.maps.Map(mapElement, mapOptions);

    // Địa chỉ: Đại học Quốc tế
    var addresses = ['Đại học Quốc tế, Linh Trung, Thủ Đức, Hồ Chí Minh, Việt Nam'];

    for (var x = 0; x < addresses.length; x++) {
        // Sử dụng Geocoding API để lấy tọa độ từ địa chỉ
        $.getJSON('https://maps.googleapis.com/maps/api/geocode/json?address=' + encodeURIComponent(addresses[x]) + '&key=YOUR_API_KEY', null, function (data) {
            if (data.status === "OK") {
                var p = data.results[0].geometry.location;
                var latlng = new google.maps.LatLng(p.lat, p.lng);

                // Đặt marker tại vị trí tìm được
                new google.maps.Marker({
                    position: latlng,
                    map: map,
                    icon: 'images/loc.png',
                    title: addresses[x]
                });
            } else {
                console.error("Geocoding error: " + data.status);
            }
        });
    }
}

// Kích hoạt bản đồ khi tải trang
google.maps.event.addDomListener(window, 'load', init);
