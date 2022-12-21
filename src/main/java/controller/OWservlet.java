package controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GettheWeather;
import model.weatherBean;

@WebServlet("/OWservlet")
public class OWservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cityStr = request.getParameter("city");
		String countryStr = request.getParameter("country");

		weatherBean wBean = new weatherBean(cityStr, countryStr);

		GettheWeather.getWeather(wBean);

		request.setAttribute("wBean", wBean);
		
		
		Cookie Cookie = new Cookie("recentSearch", cityStr);
		Cookie.setMaxAge(365*24*60*60); //funkar i 1 år
		response.addCookie(Cookie);


		RequestDispatcher rd = request.getRequestDispatcher("views/showWeather.jsp");
		rd.forward(request, response);
	}

}