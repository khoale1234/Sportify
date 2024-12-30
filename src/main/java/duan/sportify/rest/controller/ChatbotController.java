package duan.sportify.rest.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import duan.sportify.VNPayConfig;
import duan.sportify.entities.Bookingdetails;
import duan.sportify.entities.Bookings;
import duan.sportify.entities.Field;
import duan.sportify.entities.Shifts;
import duan.sportify.service.BookingService;
import duan.sportify.service.FieldService;
import duan.sportify.service.ShiftService;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/sportify/dialogflow")
public class ChatbotController {

    @Autowired
    private FieldService fieldService;
    private ShiftService shiftService;
    private BookingService bookingService;
    @PostMapping("/webhook")
   public Map<String, Object> handleWebhook(@RequestBody Map<String, Object> payload, HttpSession session) {
    String intent = extractIntent(payload);
    String responseText = "";
    Map<String, Object> responseMap = new HashMap<>();

    try {
        String username = (String) session.getAttribute("username");
        if(username== null){
            responseText="Bạn phải đăng nhập để sử dụng các chức năng nâng cao của chatbot";
        }
        switch (intent) {

            case "CheckFieldAvailability":
                String fieldName = extractParameter(payload, "field_name");
                String date = extractParameter(payload, "date");
                String time = extractParameter(payload, "time");


                Shifts shift = shiftService.findShiftByName(time);
                if (shift == null) {
                    responseText = "Thời gian " + time + " không hợp lệ. Vui lòng thử lại!";
                    break;
                } 

                // Check field availability
                boolean isAvailable = fieldService.checkAvailableByTimeAndDate(fieldName, shift.getShiftid(), date);
                if (isAvailable) {
                    responseText = "Sân " + fieldName + " khả dụng vào thời gian " + time + " ngày " + date + ".";
                } else {
                    responseText = "Rất tiếc, sân " + fieldName + " không khả dụng vào thời gian " + time + " ngày " + date + ".";
                }
                break;

            case "BookField":
                String fieldNameBook = extractParameter(payload, "field_name");
                Field fieldByName= fieldService.findByFieldName(fieldNameBook);
                int amount = (int) ((fieldByName.getPrice()) * 100);
                String vnpTxnRef = VNPayConfig.getRandomNumber(8); 
        
                Map<String, String> vnpParams = new HashMap<>();
                vnpParams.put("vnp_Version", VNPayConfig.vnp_Version);
                vnpParams.put("vnp_Command", VNPayConfig.vnp_Command);
                vnpParams.put("vnp_TmnCode", VNPayConfig.vnp_TmnCode);
                vnpParams.put("vnp_Amount", String.valueOf(amount));
                vnpParams.put("vnp_CurrCode", "VND");
                vnpParams.put("vnp_TxnRef", vnpTxnRef);
                vnpParams.put("vnp_OrderInfo", "Thanh toán đặt sân: " + vnpTxnRef);
                vnpParams.put("vnp_Locale", "vn");
                vnpParams.put("vnp_ReturnUrl", VNPayConfig.vnp_Returnurl);
                vnpParams.put("vnp_IpAddr", "127.0.0.1");
        
                // Thời gian tạo và hết hạn
                Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
                SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
                vnpParams.put("vnp_CreateDate", formatter.format(cld.getTime()));
        
                cld.add(Calendar.MINUTE, 15);
                vnpParams.put("vnp_ExpireDate", formatter.format(cld.getTime()));
        
                // Xây dựng query và URL thanh toán
                List<String> fieldNames = new ArrayList<>(vnpParams.keySet());
                Collections.sort(fieldNames);
                StringBuilder hashData = new StringBuilder();
                StringBuilder query = new StringBuilder();
        
                for (String fieldNameB : fieldNames) {
                    String fieldValue = vnpParams.get(fieldNameB);
                    if (fieldValue != null && !fieldValue.isEmpty()) {
                        hashData.append(fieldNameB).append('=').append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII));
                        query.append(URLEncoder.encode(fieldNameB, StandardCharsets.US_ASCII))
                                .append('=').append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII));
                        if (!fieldNameB.equals(fieldNames.get(fieldNames.size() - 1))) {
                            hashData.append('&');
                            query.append('&');
                        }
                    }
                }
        
                String vnpSecureHash = VNPayConfig.hmacSHA512(VNPayConfig.vnp_HashSecret, hashData.toString());
                String paymentUrl = VNPayConfig.vnp_PayUrl + "?" + query + "&vnp_SecureHash=" + vnpSecureHash;
        
                responseText="vui lòng thực hiện thanh toán qua url sau. "+paymentUrl;
                break;
            case "FieldSuggestions":
                
                break;

            default:
                responseText = "Xin lỗi, tôi không hiểu yêu cầu của bạn.";
                break;
            } 
        }catch (Exception e) {
            responseText = "Có lỗi xảy ra khi xử lý yêu cầu của bạn. Vui lòng thử lại!";
        }
        responseMap.put("fulfillmentText", responseText);
    return responseMap;
    }

    // Extract intent and parameters from Dialogflow payload (helper methods)
    private String extractIntent(Map<String, Object> payload) {
        return (String) ((Map<String, Object>) ((Map<?, ?>) payload.get("queryResult")).get("intent")).get("displayName");
    }

    private String extractParameter(Map<String, Object> payload, String paramName) {
        return (String) ((Map<String, Object>) ((Map<String, Object>) payload.get("queryResult")).get("parameters")).get(paramName);
    }

    private String generateDialogflowResponse(String responseText) {
        return "{\"fulfillmentText\": \"" + responseText + "\"}";
    }
}
