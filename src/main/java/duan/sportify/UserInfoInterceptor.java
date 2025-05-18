package duan.sportify;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.servlet.HandlerInterceptor;

import duan.sportify.dao.AuthorizedDAO;
import duan.sportify.entities.Authorized;
import duan.sportify.entities.Users;
import duan.sportify.service.UserService;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@Component
public class UserInfoInterceptor implements HandlerInterceptor {

    @Autowired
    private UserService userService;
    
    @Autowired
    private AuthorizedDAO authorizedDAO; 

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // Lấy username từ session
        String username = (String) request.getSession().getAttribute("username");
        log.info(username);
        if (username != null) {
            // Lấy thông tin người dùng từ service
            Users users = userService.findById(username);
            // Đưa thông tin người dùng vào model
            request.setAttribute("users", users);
            //lấy role người dùng
            List<Authorized> authorizedList = authorizedDAO.findAllAuthorized(username);
            // Đưa thông tin vào model - lấy phần tử đầu tiên nếu có
            if (!authorizedList.isEmpty()) {
                request.setAttribute("authorized", authorizedList.get(0));
            }
        }
        return true;
    }
}



