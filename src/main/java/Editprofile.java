import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.ServletException;
import java.io.*;
import javax.servlet.annotation.*;

//@WebServlet("/Register")
@MultipartConfig
public class Editprofile extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();

        Connection conn=null;
        
        try{
        	String uname = (String)request.getParameter("username");
            String oldpass = (String)request.getParameter("old_password");
            String newpass = (String)request.getParameter("new_password");
            String confirmpass = (String)request.getParameter("confirm_password");
            String dob = (String)request.getParameter("dob");
            String email = (String)request.getParameter("emailid");
            String[] interest = (String[])request.getParameterValues("title[]");
            //Part part=request.getPart("uploadfile");
    		//String filename=part.getSubmittedFileName();
    		//out.println(filename);
            out.print("interests:"+interest.length);
            out.print("d"+dob+" e"+email+" O"+oldpass);
            String interestfinal="";
            int i;
            for(i=0;i<interest.length-1;i++)
            {
            	interestfinal=interestfinal+(String)interest[i]+",";
            }
            interestfinal=interestfinal+(String)interest[i];
            
            out.println(interestfinal);

            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bugfixingportal","root","1234");
             
            if (conn!=null){
            	HttpSession session=request.getSession(false);
                try{
                String msg="";
                if(oldpass.length()!=0 && newpass.length()!=0 && confirmpass.length()!=0) {
                    PreparedStatement ps= conn.prepareStatement("update user_details set password=? where username=?");
                    ps.setString(1,newpass);
                    ps.setString(2,(String)session.getAttribute("user"));
                    int x = ps.executeUpdate();
                    out.print("in");
                    if(x>0){
                        //out.print("registered successfully");
                        
                            
                                msg=msg+"password";
                                //String redirectURL = "hlogin.html";
//                                response.sendRedirect("login.html?msg="+msg);
                            
                        }
                        
                    
//                    else{
//                        //out.print("registration failed .Acc already exists!:(((( ");
//                        String msg="registration failed .Acc already exists!:(((( ";
//                        String redirectURL = "http://localhost:8080/BFP/?msg="+msg;
//                        response.sendRedirect(redirectURL);
//                    }
                    
                    

                }
                if(email.length()!=0 ) {
                    PreparedStatement ps= conn.prepareStatement("update user_details set email=? where username=?");
                    ps.setString(1,email);
                    ps.setString(2,(String)session.getAttribute("user"));
                    int x = ps.executeUpdate();
                    out.print("in");
                    if(x>0){
                        //out.print("registered successfully");
                        
                            
                                msg=msg+" email";
                                //String redirectURL = "hlogin.html";
//                                response.sendRedirect("login.html?msg="+msg);
                            
                        }
                }
                
                if(dob.length()!=0) {
                    PreparedStatement ps= conn.prepareStatement("update user_details set date_of_birth=? where username=?");
                    ps.setString(1,dob);
                    ps.setString(2,(String)session.getAttribute("user"));
                    int x = ps.executeUpdate();
                    out.print("in");
                    if(x>0){
                        //out.print("registered successfully");
                        
                            
                                msg=msg+" dob";
                                //String redirectURL = "hlogin.html";
//                                response.sendRedirect("login.html?msg="+msg);
                            
                        }
                }
                
                
                
                if(interestfinal.length()>0){
                	//InputStream inputStream= part.getInputStream();
                	PreparedStatement ps= conn.prepareStatement("update user_details set interests=? where username=?");
                	ps.setString(1,interestfinal);
                	ps.setString(2,(String)session.getAttribute("user"));
                	int x = ps.executeUpdate();
                    out.print("in");
                    if(x>0){
                        out.print("interest");
                         
                            
                                //msg=msg+"img";
                                //String redirectURL = "hlogin.html";
//                                response.sendRedirect("login.html?msg="+msg);
                            
                        }
                }
                	
                                
               response.sendRedirect("Viewprofile");
                
                
                
                }catch(Exception e){
                    String msg="registration failed .Acc already exists with error!:(((( "+e;
//                    String redirectURL = "http://localhost:8080/BFP/?msg="+msg;
//                    response.sendRedirect("");
                    out.print(msg);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }}}