package duan.sportify.service;

import org.springframework.stereotype.Service;

@Service
public class DistanceService {
    private static final double EARTH_RADIUS = 6371.0; // Bán kính Trái Đất (km)

    /**
     * Tính khoảng cách giữa hai tọa độ địa lý (latitude, longitude) bằng công thức Haversine.
     *
     * @param lat1 Vĩ độ của điểm 1
     * @param lon1 Kinh độ của điểm 1
     * @param lat2 Vĩ độ của điểm 2
     * @param lon2 Kinh độ của điểm 2
     * @return Khoảng cách giữa hai điểm (km)
     */
    public double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
        double latDistance = Math.toRadians(lat2 - lat1);
        double lonDistance = Math.toRadians(lon2 - lon1);

        double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
                + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        return EARTH_RADIUS * c; 
    }
}