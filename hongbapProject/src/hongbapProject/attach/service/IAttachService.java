package hongbapProject.attach.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAttachService {
	void execute(HttpServletRequest request,
			HttpServletResponse response);
	
}

