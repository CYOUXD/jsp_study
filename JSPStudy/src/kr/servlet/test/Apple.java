package kr.servlet.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/apple")
public class Apple extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Apple() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/apple을 이용한 서블릿 매핑");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("/apple을 이용한 서블릿 매핑");
		//??????????????왜 여기서는 실행 안되지? a태그에 method="post"를 설정해 줄 수 없어서??
		//답 : doPost를 사용하려면 반드시 form method="post"를 사용해야 한다.
	}

}
