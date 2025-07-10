package com.maiphuhai.controller;

import com.maiphuhai.model.Users;
import com.maiphuhai.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/auth")
@SessionAttributes("currentUser")   // giữ user sau khi login
public class AuthController {

    @Autowired
    private AuthService authService;

    /* ==============================================================
       1.  LOGIN
       ============================================================== */
    /**
     * Show login form
     */
    @GetMapping("/login")
    public String showLogin() {
        return "auth/login";
    }

    /**
     * Handle login submit
     */
    @PostMapping("/login")
    public String doLogin(@RequestParam String email,
            @RequestParam String password,
            Model model,
            RedirectAttributes ra) {

        Users user = authService.login(email, password);
        if (user == null) {
            model.addAttribute("error", "Sai email hoặc mật khẩu!");
            return "auth/login";
        }

        model.addAttribute("currentUser", user);   // put to session
        ra.addFlashAttribute("message", "Đăng nhập thành công");
        return "redirect:/";                       // trang home
    }

    /* ==============================================================
       2.  REGISTER (SIGN-UP)
       ============================================================== */
    @GetMapping("/sign-up")
    public String showRegister() {
        return "auth/sign-up";
    }

    @PostMapping("/sign-up")
    public String doRegister(@RequestParam String email,
            @RequestParam String password,
            @RequestParam String confirm,
            Model model,
            RedirectAttributes ra) {

        if (!password.equals(confirm)) {
            model.addAttribute("error", "Mật khẩu xác nhận không khớp");
            return "auth/sign-up";
        }

        Users newUser = new Users(0, email, password, "CUSTOMER");
        boolean ok = authService.register(newUser);

        if (!ok) {
            model.addAttribute("error", "Email đã được sử dụng");
            return "auth/sign-up";
        }

        ra.addFlashAttribute("message", "Tạo tài khoản thành công, hãy đăng nhập!");
        return "redirect:/auth/login";
    }

    /* ==============================================================
       3.  CHANGE PASSWORD
       ============================================================== */
    @GetMapping("/change-password")
    public String showChangePwd() {
        return "auth/change-password";
    }

    @PostMapping("/change-password")
    public String doChangePwd(@SessionAttribute("currentUser") Users user,
            @RequestParam String currentPassword,
            @RequestParam String newPassword,
            @RequestParam String confirmNewPassword,
            RedirectAttributes ra,
            Model model) {

        // kiểm tra mật khẩu cũ đúng không
        Users check = authService.login(user.getEmail(), currentPassword);
        if (check == null) {
            model.addAttribute("error", "Mật khẩu hiện tại không chính xác");
            return "auth/change-password";
        }

        if (!newPassword.equals(confirmNewPassword)) {
            model.addAttribute("error", "Xác nhận mật khẩu mới không khớp");
            return "auth/change-password";
        }

        boolean updated = authService.changePassword(user.getUserId(), newPassword);
        if (updated) {
            ra.addFlashAttribute("message", "Đổi mật khẩu thành công");
        } else {
            ra.addFlashAttribute("message", "Có lỗi xảy ra, thử lại sau");
        }
        return "redirect:/auth/change-password";
    }

    /* ==============================================================
       4.  LOGOUT (tuỳ chọn)
       ============================================================== */
    @GetMapping("/logout")
    public String logout(SessionStatus status, RedirectAttributes ra) {
        status.setComplete();                // xoá session "currentUser"
        ra.addFlashAttribute("message", "Bạn đã đăng xuất!");
        return "redirect:/auth/login";
    }
}
