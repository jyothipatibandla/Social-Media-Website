package com.priyam;



import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.ServletException;
import java.io.*;
import java.io.IOException;
import javax.servlet.annotation.*;


@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)

public class report extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public report() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
            	
                content = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
                content = content.substring(content.indexOf('.'));
                System.out.println(content);
                return content;
            }
        }
        return null;
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PrintWriter out = response.getWriter();
		OutputStream outst = null;
        InputStream filecontent = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","");
			
			String title = request.getParameter("bugtitle");
			String type = request.getParameter("bugtype");
			String desc = request.getParameter("bugdesc");
			Part filePart = request.getPart("bugimage");
			String user = (String)request.getSession().getAttribute("user");
			
			PreparedStatement ps = conn.prepareStatement("select count(*) as total from report");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String fileName = Integer.toString(Integer.parseInt(rs.getString("total"))+1)+getFileName(filePart);
			
			String photo=null;
			
			if(filePart != null) {
				String path="F:\\Eclipse 2021 Workspace\\BugReport\\src\\main\\webapp\\localdb\\reportss";
	        
				File file=new File(path);
				file.createNewFile();
	        
				outst = new FileOutputStream(new File(path + File.separator+ fileName));
				filecontent = filePart.getInputStream();
				int read = 0;
				final byte[] bytes = new byte[1024];
	        
				while ((read = filecontent.read(bytes)) != -1) 
					outst.write(bytes, 0, read);
	            
					photo=path+"/"+fileName;
				}
			
			ps = conn.prepareStatement("insert into report(emailid,reptitle, reptype, repdesc,screenshot) values(?,?,?,?,?)");
			ps.setString(1, user);
			ps.setString(2, title);
			ps.setString(3, type);
			ps.setString(4, desc);
			ps.setString(5, photo);
			
			int x = ps.executeUpdate();
			
			HttpSession session = request.getSession();
			session.setAttribute("msg", "1");
			response.sendRedirect("report.jsp");
		}
		
		catch(Exception e) {
			response.sendRedirect("Error.jsp?error="+e);
			e.printStackTrace();
		}
	}

}



