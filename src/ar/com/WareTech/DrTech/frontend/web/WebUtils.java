package ar.com.WareTech.DrTech.frontend.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import ar.com.WareTech.DrTech.middleware.entities.User;
import ar.com.WareTech.DrTech.middleware.services.SecurityManager;

public class WebUtils {

	final static public String USER         = "__USER"; 
	final static public String MESSAGE_LIST = "__MESSAGE_LIST";
	final static public String ERROR_LIST   = "__ERROR_LIST";

	/**
	 * 
	 * @param httpSession
	 * @param user
	 */
	static public void setUser(
			HttpSession httpSession,
			User user
			)
	{
		httpSession.setAttribute(USER, user);
	}

	/**
	 * 
	 * @param httpSession
	 * @return
	 */
	static public User getUser(
			HttpSession httpSession
			)
	{
		return (User) httpSession.getAttribute(USER);
	}

	/**
	 * 
	 * @param httpSession
	 * @param url
	 * @return
	 */
	static public boolean checkAuthorization(
			HttpSession httpSession,
			String url
			)
	{
		return SecurityManager.getInstance().checkAuthorization(
				WebUtils.getUser(httpSession), 
				url
				);
	}

	/**
	 * 
	 * @param httpSession
	 * @param error
	 */
	static public void addError(
			HttpSession httpSession, 
			String error
			)
	{
		WebUtils.getErrorList(httpSession).add(error);
	}

	/**
	 * 
	 * @param httpSession
	 * @param message
	 */
	static public void addMessage(
			HttpSession httpSession, 
			String message
			)
	{
		WebUtils.getMessageList(httpSession).add(message);
	}

	/**
	 * 
	 * @param httpSession
	 * @return
	 */
	static public List<String> getErrorList(
			HttpSession httpSession
			)
	{
		List<String> errorList = (List<String>) httpSession.getAttribute(ERROR_LIST);
		if (errorList == null)
		{
			errorList = new ArrayList<String>();
			httpSession.setAttribute(
					ERROR_LIST,
					errorList
					);
		}
		return errorList;
	}

	/**
	 * 
	 * @param httpSession
	 * @return
	 */
	static public List<String> getMessageList(
			HttpSession httpSession
			)
	{
		List<String> messageList = (List<String>) httpSession.getAttribute(MESSAGE_LIST);
		if (messageList == null)
		{
			messageList = new ArrayList<String>();
			httpSession.setAttribute(
					MESSAGE_LIST,
					messageList
					);
		}
		return messageList;
	}

	/**
	 * 
	 * @param httpSession
	 * @return
	 */
	static public String popRedirectAfterLogin(
			HttpSession httpSession
			)
	{
		String redirectAfterLogin = (String) httpSession.getAttribute(SecurityFilter.REDIRECT_AFTER_LOGIN);
		httpSession.removeAttribute(SecurityFilter.REDIRECT_AFTER_LOGIN);

		return redirectAfterLogin;
	}
}
