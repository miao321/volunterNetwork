/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-03-24 02:41:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>用户登陆</title>\r\n");
      out.write("<script src=\"js/jquery-3.2.1.min.js\" type=\"text/javascript\"> </script>\r\n");
      out.write("<script src=\"js/keyEvent.js\" type=\"text/javascript\"> </script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"> </script>\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"css/adminStyle.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\tbody{\r\n");
      out.write("\t\r\n");
      out.write("\t\tbackground: url(\"images/login1.jpg\") no-repeat;\r\n");
      out.write("\t\tbackground-size: 1380px 630px;\r\n");
      out.write("\t\tpadding-top: 50px; \r\n");
      out.write("       /* \t//overflow: hidden; */\r\n");
      out.write("\t\t/* //height:768px;*/\r\n");
      out.write("\t} \r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body onkeydown=\"keyLogin();\">\r\n");
      out.write("\t<div class=\"navbar navbar-default navbar-fixed-top\" style=\"background:#272727;color:white\" >\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\" >\r\n");
      out.write("\t\t\t\t<div class=\"col-sm-12\" style=\"font-size:20px;margin-top:10px;font-weight: bold;\">\r\n");
      out.write("\t\t\t\t\t登录\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"row\" style=\"margin-top:100px;align:center;\">\r\n");
      out.write("\t\t<div class=\"col-sm-offset-4 col-sm-4\" style=\"background:#eee;width:500px;border-radius:8px;box-shadow:5px 5px 5px #333\">\r\n");
      out.write("\t\t\t<form action=\"login\" method=\"post\" role=\"form\">\r\n");
      out.write("\t\t\t\t<div class=\"form-group\" style=\"margin-top:-18px\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-12\" style=\"text-align:center;font-weight: bold;font-size: 20px;\">\r\n");
      out.write("\t\t\t\t\t\t<h1>莞工志愿者网<span style=\"margin-left:20px;height: 20px;margin-right:20px\">|</span>认证中心</h1>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\" style=\"margin-top:15px\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-12\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"username\" name=\"username\" class=\"form-control\" placeholder=\"请输入帐号\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<span style=\"color:red;margin-top:4px;margin-left:20px;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${result}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\" >\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-12\" style=\"margin-top:15px\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"password\"  id=\"password\" name=\"password\" class=\"form-control\" placeholder=\"请输入密码\">\r\n");
      out.write("\t\t\t\t\t</div>\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<span style=\"color:red;argin-top:4px;margin-left:20px;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${result2}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span>\r\n");
      out.write("\t\t\t\t<span style=\"color:red;argin-top:4px;margin-left:20px;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${result3}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</span>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-12\" style=\"margin-top:15px\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" id=\"login\" class=\"btn btn-primary\" class=\"form-control\" style=\"width:100%\">登录</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-12\" style=\"margin-top:15px;margin-bottom:15px\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"reset\" id=\"reset\" class=\"btn btn-primary\" class=\"form-control\" style=\"width:100%\">重置</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t<!-- 注册 -->\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
