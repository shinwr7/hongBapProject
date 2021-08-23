package hongbapProject.menu.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IMenuService {
	void execute(HttpServletRequest request, HttpServletResponse response);
	
}
