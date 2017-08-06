package net.bookshop.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import net.book.entity.User;
import net.book.service.RegisterService;
import net.bookshop.form.RegisterForm;

@Controller
public class RegisterContrller {
	
    private RegisterService registerService =new RegisterService();
	@RequestMapping("/register")
	public String register(@ModelAttribute("RegisterForm") RegisterForm registerForm,Model model,HttpSession session) {
		model.addAttribute(registerForm);
		session.setAttribute("errCode",null);
		session.setAttribute("errEmail",null);
		return "register";
	}
	
	@RequestMapping("/regover")
	public String edit(@ModelAttribute("RegisterForm") RegisterForm registerForm,Model model,HttpSession session) {
		String strCode=session.getAttribute("strCode").toString();
		String regCode=registerForm.getAuthCode();
		String reg="register";
		session.setAttribute("errCode",null);
		session.setAttribute("errEmail",null);
		if(!strCode.equals(regCode)) {
			if(session.getAttribute("errCode")!=null)
			session.setAttribute("errCode",null);
			session.setAttribute("errCode", "��֤�����");
		}else {
			if(registerService.isHas(registerForm.getName())){
			
			session.setAttribute("errCode",null);
			User user=new User();
			user.setName(registerForm.getName());
		    user.setPassword(registerForm.getPassword());
			registerService.add(user);
			reg="login";
			} else {
				session.setAttribute("errEmail","��������ע��");
			}
		}
		return reg;
		
	}
	@RequestMapping("authCode")
    public void getAuthCode(HttpServletRequest request, HttpServletResponse response,HttpSession session)
            throws IOException {
        int width = 63;
        int height = 37;
        Random random = new Random();
        //����responseͷ��Ϣ
        //��ֹ����
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        //���ɻ�����image��
        BufferedImage image = new BufferedImage(width, height, 1);
        //����image���Graphics���ڻ��Ʋ���
        Graphics g = image.getGraphics();
        //Graphics�����ʽ
        g.setColor(this.getRandColor(200, 250));
        g.setFont(new Font("Times New Roman",0,28));
        g.fillRect(0, 0, width, height);
        //���Ƹ�����
        for(int i=0;i<40;i++){
            g.setColor(this.getRandColor(130, 200));
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int x1 = random.nextInt(12);
            int y1 = random.nextInt(12);
            g.drawLine(x, y, x + x1, y + y1);
        }

        //�����ַ�
        String strCode = "";
        for(int i=0;i<4;i++){
            String rand = String.valueOf(random.nextInt(10));
            strCode = strCode + rand;
            g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
            g.drawString(rand, 13*i+6, 28);
        }
        //���ַ����浽session������ǰ�˵���֤
        g.dispose();
        ImageIO.write(image, "JPEG", response.getOutputStream());
        
        response.getOutputStream().flush();
        session.removeAttribute("errCode");
        session.setAttribute("strCode", strCode);
         
    }
	//������ɫ
	  Color getRandColor(int fc,int bc){
	        Random random = new Random();
	        if(fc>255)
	            fc = 255;
	        if(bc>255)
	            bc = 255;
	        int r = fc + random.nextInt(bc - fc);
	        int g = fc + random.nextInt(bc - fc);
	        int b = fc + random.nextInt(bc - fc);
	        return new Color(r,g,b);
	    }
}
