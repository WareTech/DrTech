/*
 * Created on 30/07/2007
 *
 * Augusto (AugustoSoncini@WareTech.com.ar)
 * Company: WareTech TM (www.WareTech.com.ar)
 * Project: Mark SRL
 */
package ar.com.WareTech.DrTech.frontend.web;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.services.SecurityManager;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public class SecurityFilter
	implements javax.servlet.Filter 
{
	final static public String REDIRECT_AFTER_LOGIN = "REDIRECT_AFTER_LOGIN";
	
	final static public String[] URL_EXCEPTIONS = new String[]{
		"/Login.jsp",
		"/Logout.jsp",
		"/Unathorized.jsp",
		"/test/",
		"/service/Authenticate.jsp"
		};
	
	/* (non-Javadoc)
	 * @see javax.servlet.Filter#destroy()
	 */
	public void destroy() 
	{
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	public void doFilter(
			ServletRequest servletRequest, 
			ServletResponse servletResponse,
			FilterChain filterChain
			) 
		throws 
			IOException, 
			ServletException 
	{
		HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
		HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
		
		System.out.println("SecurityFilter:" + httpServletRequest.getRequestURL());
		System.out.println("ServletPath:" + httpServletRequest.getServletPath());

		String url = httpServletRequest.getServletPath();
		for(String urlException : URL_EXCEPTIONS) 
		{
			if (url.startsWith(urlException))
			{
				filterChain.doFilter(
						servletRequest, 
						servletResponse
						);
				return;
			}
		}

		User user = WebUtils.getUser(httpServletRequest.getSession());
		if (user == null)
		{
			httpServletRequest.getSession().setAttribute(REDIRECT_AFTER_LOGIN, httpServletRequest.getRequestURL().toString());
			httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/Login.jsp");
			return;
		}

		boolean authorized = SecurityManager.getInstance().checkAuthorization(user, url);
		
		if (authorized)
		{
			filterChain.doFilter(
					servletRequest, 
					servletResponse
					);
		}
		else
		{
			httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/_Unauthorized.jsp");
		}
	}

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	public void init(
			FilterConfig filterConfig
			) 
		throws ServletException 
	{
	}
}