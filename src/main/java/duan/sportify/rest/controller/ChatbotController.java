package duan.sportify.rest.controller;
import org.apache.http.HttpStatus;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;

import duan.sportify.VNPayConfig;
import duan.sportify.entities.Bookingdetails;
import duan.sportify.entities.Bookings;
import duan.sportify.entities.Field;
import duan.sportify.entities.Shifts;
import duan.sportify.entities.Users;
import duan.sportify.service.BookingService;
import duan.sportify.service.FieldService;
import duan.sportify.service.ShiftService;
import duan.sportify.service.UserService;
import lombok.extern.slf4j.Slf4j;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Slf4j
@RestController
@Scope("session")
@RequestMapping("/sportify/dialogflow")
public class ChatbotController {

    @Autowired
    private FieldService fieldService;
    @Autowired
    private ShiftService shiftService;
    @Autowired
    private UserService userService; 

    @PostMapping("/webhook")
    public Map<String, Object> handleWebhook(@RequestBody Map<String, Object> payload) {
        String intent = extractIntent(payload);
        String responseText = "";
        Map<String, Object> responseMap = new HashMap<>();
        log.info("payload{}", payload);
        try {
            Double latitude = null;
            Double longitude = null;
            // Lấy toạ độ từ custom payload gửi từ frontend
            Map<String, Object> originalDetectIntentRequest = (Map<String, Object>) payload.get("originalDetectIntentRequest");
            if (originalDetectIntentRequest != null) {
                Map<String, Object> customPayload = (Map<String, Object>) originalDetectIntentRequest.get("payload");
                if (customPayload != null) {
                    if (customPayload.get("latitude") != null && customPayload.get("longitude") != null) {
                        latitude = Double.parseDouble(customPayload.get("latitude").toString());
                        longitude = Double.parseDouble(customPayload.get("longitude").toString());
                        log.info("Lấy toạ độ từ custom payload: lat={}, lng={}", latitude, longitude);
                    }
                }
            }
            switch (intent) {

                case "CheckFieldAvailibility":
                    String fieldName = extractParameter(payload, "field_name");
                    String dateRaw = extractParameter(payload, "date1");  // e.g. 2025-04-11T12:00:00+07:00
                    String timeRaw = extractParameter(payload, "time1");  // e.g. 2025-04-11T19:00:00+07:00

                    log.info("dateraw: "+timeRaw);
                    log.info("dateraw: "+dateRaw);

                    String dateOnly = dateRaw != null && dateRaw.length() >= 10 ? dateRaw.substring(0, 10) : "";
                    
                    

                    String timeOnly = timeRaw != null && timeRaw.length() >= 19 ? timeRaw.substring(11, 19) : "";
                    if(fieldService.findByFieldName(fieldName)==null){
                        responseText = "Sân không hợp lệ hoặc không khả dụng";
                        break;
                    }
                    if (dateOnly.isEmpty()||timeOnly.isEmpty()){
                        responseText = "Bạn vui lòng nhập đầy đủ ngày và thời gian để kiểm tra(Ví dụ: Sân bóng đá 5 người có trống vào ngày 2024-12-24  lúc 15:30 không?)";
                        break;
                    }
                    LocalTime inputTime = LocalTime.parse(timeOnly);
                    LocalDate inputDate= LocalDate.parse(dateOnly);
                    log.info("time: "+timeOnly);
                    log.info("date: "+inputDate);
                    Shifts shift = shiftService.findShiftByTime(inputTime);
                    if (shift == null) {
                        responseText = "Thời gian " + timeRaw + " không hợp lệ. Vui lòng thử lại!";
                        break;
                    } 
                    boolean isAvailable = fieldService.checkAvailableByTimeAndDate(fieldName, shift.getShiftid(), inputDate);
                    log.info("is available: "+isAvailable);
                    if (isAvailable) {
                        responseText = "Sân " + fieldName + " khả dụng vào thời gian " + timeOnly + " ngày " + dateOnly + ". Bạn có thể đặt sân vào thời gian này.";
                    } else {
                        responseText = "Rất tiếc, sân " + fieldName + " không khả dụng vào thời gian " + timeOnly + " ngày " + dateOnly  + ".";
                    }
                    break;

                case "SuggestField":

                try {

                    Map<String, Object> innerPayload = (Map<String, Object>) originalDetectIntentRequest.get("payload");
        
                    String username = (String) innerPayload.get("userId");
                    log.info("username: "+username);
                    if (username == null || username.isEmpty()) {
                        responseText = "Vui lòng đăng nhập để nhận gợi ý sân phù hợp.";
                        break;
                    }
            
                    // Gọi service để lấy danh sách sân được gợi ý
                    List<Field> suggestedFields = fieldService.suggestFieldsByHistory(username);
                    
                    if (suggestedFields == null || suggestedFields.isEmpty()) {
                        List<Field> popularFields= fieldService.findPopularFields();
                        StringBuilder suggestions = new StringBuilder("Không có dữ liệu lịch sử đặt sân, sau đây là một số sân phổ biến:\n");
                        for (Field field : popularFields) {
                            suggestions.append("- ")
                                    .append(field.getNamefield())
                                    .append(" (Giá: ")
                                    .append(field.getPrice())
                                    .append(" VNĐ)\n");
                        }
                        responseText = suggestions.toString();
                    } else {
                        StringBuilder suggestions = new StringBuilder("Dựa trên lịch sử đặt sân của bạn, đây là một số gợi ý:\n");
                        for (Field field : suggestedFields) {
                            suggestions.append("- ")
                                    .append(field.getNamefield())
                                    .append(" (Giá: ")
                                    .append(field.getPrice())
                                    .append(" VNĐ)\n");
                        }
                        responseText = suggestions.toString();
                    }
                    
                } catch (Exception e) {
                    log.error("Lỗi khi gợi ý sân: ", e);
                    responseText = "Có lỗi xảy ra khi tìm gợi ý sân. Vui lòng thử lại sau!";
                }
                break;
                    case "SuggestFieldByLocation":
                    Map<String, Object> innerPayload = (Map<String, Object>) originalDetectIntentRequest.get("payload");
        
                    String username = (String) innerPayload.get("userId");
                    String sportType = extractParameter(payload, "sporttype");
                    log.info("Intent SuggestFieldByLocation được gọi với sportType={}", sportType);
                    
                    if (username == null || username.isEmpty()) {
                        responseText = "Vui lòng đăng nhập để nhận gợi ý sân phù hợp.";
                        break;
                    }
                    
                    responseText = handleSuggestFieldByLocation(latitude, longitude, sportType, username);
                    break;
                default:
                    responseText = "Xin lỗi, tôi không hiểu yêu cầu của bạn.";
                    break;
            } 
        }catch (Exception e) {
            log.info(e.getMessage());
            responseText = "Có lỗi xảy ra khi xử lý yêu cầu của bạn. Vui lòng thử lại!";
        }
        responseMap.put("fulfillmentText", responseText);
        return responseMap;
    }
    @PostMapping("/store-geolocation")
    public ResponseEntity<Map<String, Object>> storeGeolocation(@RequestBody Map<String, Object> payload, HttpSession session) {
        Map<String, Object> response = new HashMap<>();
        try {
            log.info("payload{}", payload);
            Map<String, Object> queryResult = (Map<String, Object>) payload.get("queryResult");
            Map<String, Object> parameters = (Map<String, Object>) queryResult.get("parameters");

            double latitude = Double.parseDouble(parameters.get("latitude").toString());
            double longitude = Double.parseDouble(parameters.get("longitude").toString());
            

            @SuppressWarnings("unchecked")
            Map<String, Object> authentication = (Map<String, Object>) session.getAttribute("authentication");
            if (authentication != null && authentication.containsKey("user")) {
                Users user = (Users) authentication.get("user");
                String username = user.getUsername();
                

                userService.updateUserLocation(username, latitude, longitude);
                log.info("Đã cập nhật tọa độ cho user {} trong database: lat={}, lng={}", username, latitude, longitude);
                
                response.put("success", true);
                response.put("message", "Vị trí của bạn đã được lưu thành công!");
                return ResponseEntity.ok(response);
            } else {
                // Người dùng chưa đăng nhập
                log.warn("Người dùng chưa đăng nhập, không thể lưu tọa độ vào database");
                response.put("success", false);
                response.put("message", "Vui lòng đăng nhập để lưu vị trí của bạn!");
                return ResponseEntity.ok(response);
            }
        } catch (Exception e) {
            log.error("Lỗi khi lưu tọa độ: ", e);
            response.put("success", false);
            response.put("message", "Có lỗi xảy ra khi lưu vị trí của bạn!");
            return ResponseEntity.status(HttpStatus.SC_INTERNAL_SERVER_ERROR).body(response); }
    }

    private String extractIntent(Map<String, Object> payload) {
        return (String) ((Map<String, Object>) ((Map<?, ?>) payload.get("queryResult")).get("intent")).get("displayName");
    }
    private String extractParameter(Map<String, Object> payload, String paramName) {
        return (String) ((Map<String, Object>) ((Map<String, Object>) payload.get("queryResult")).get("parameters")).get(paramName);
    }

    private String generateDialogflowResponse(String responseText) {
        return "{\"fulfillmentText\": \"" + responseText + "\"}";
    }
    private String handleSuggestFieldByLocation(Double latitude, Double longitude, String sporttype,String username) {
        try {
          ;
                

                Users user = userService.findById(username);
                
                if (user != null && user.getLatitude() != null && user.getLongitude() != null) {

                    latitude = user.getLatitude();
                    longitude = user.getLongitude();
                    log.info("Sử dụng tọa độ từ database cho user {}: lat={}, lng={}", username, latitude, longitude);
                } else if (latitude != null && longitude != null) {

                    log.info("Không tìm thấy tọa độ trong database, sử dụng tọa độ từ request: lat={}, lng={}", latitude, longitude);
                } else {

                    log.warn("Không tìm thấy tọa độ nào, không thể gợi ý sân gần vị trí người dùng");
                    return "Không thể xác định vị trí của bạn. Vui lòng cho phép truy cập vị trí hoặc nhập địa chỉ cụ thể.";
                }

            
            double searchRadius = 10.0; 
            

            List<Field> nearbyFields = fieldService.findFieldsNearUser(latitude, longitude, searchRadius, sporttype);
            

            if (nearbyFields == null || nearbyFields.isEmpty()) {
                searchRadius = 20.0; 
                nearbyFields = fieldService.findFieldsNearUser(latitude, longitude, searchRadius, sporttype);
            }
    
            if (nearbyFields == null || nearbyFields.isEmpty()) {
                if (sporttype != null && !sporttype.isEmpty()) {
                    return "Không tìm thấy sân " + sporttype + " nào gần vị trí của bạn.";
                } else {
                    return "Không tìm thấy sân nào gần vị trí của bạn.";
                }
            }
    
            StringBuilder suggestions = new StringBuilder("Dựa trên vị trí của bạn, đây là một số sân gần nhất");
            if (sporttype != null && !sporttype.isEmpty()) {
                suggestions.append(" cho môn ").append(sporttype);
            }
            suggestions.append(":\n\n");
            

            int maxResults = Math.min(nearbyFields.size(), 5);
            
            for (int i = 0; i < maxResults; i++) {
                Field field = nearbyFields.get(i);
                suggestions.append("➡️ ")
                          .append(field.getNamefield())
                          .append("\n   📍 ")
                          .append(field.getAddress())
                          .append("\n   🚗 Khoảng cách: ")
                          .append(String.format("%.2f", field.getDistance()))
                          .append(" km\n   💰 Giá: ")
                          .append(String.format("%.2f", field.getPrice()))
                          .append(" VNĐ\n\n");
            }
            
            return suggestions.toString();
        } catch (Exception e) {
            log.error("Lỗi khi gợi ý sân gần vị trí: ", e);
            return "Có lỗi xảy ra khi tìm gợi ý sân. Vui lòng thử lại sau!";
        }
    }
}
