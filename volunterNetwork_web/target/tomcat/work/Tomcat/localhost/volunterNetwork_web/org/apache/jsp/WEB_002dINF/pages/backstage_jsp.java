/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-19 01:48:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class backstage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>莞工志愿者网管理后台</title>\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/logo.ico\" media=\"screen\" /> \r\n");
      out.write("<link href=\"css/background.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"css/adminStyle.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/date.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/background.js\"></script>  \r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTime()\">\r\n");
      out.write("\t<div class=\"top1\">\r\n");
      out.write("\t\t<marquee scrollAmount=2 width=300>数据珍贵 请谨慎操作</marquee>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"top2\">\r\n");
      out.write("\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t<img src=\"images/logo.png\" title=\"东莞理工学院\" />\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"title\">\r\n");
      out.write("\t\t\t<h3>莞工志愿者网管理后台</h3>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<button style=\"margin-top:24px;margin-left:210px;\" class=\"btn btn-info\" onclick=\"addRole()\" style=\"margin: 6px 0;\" type=\"button\">\r\n");
      out.write("\t\t\t<span style=\"margin: 0px 4px;\" class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span> 修改密码\r\n");
      out.write("\t\t</button>\r\n");
      out.write("\t\t<div class=\"fr top-link\">\r\n");
      out.write("\t\t\t<a href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('user/changeMessage');\" target=\"mainCont\" title=\"修改个人信息\"><i\r\n");
      out.write("\t\t\t\tclass=\"adminIcon\"></i><span>管理员：");
      out.print(session.getAttribute("userName"));
      out.write("</span></a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"left\">\r\n");
      out.write("\t\t<div class=\"div1\">\r\n");
      out.write("\t\t\t<div class=\"left_top\"\r\n");
      out.write("\t\t\t\tstyle=\"height: 32px; line-height: 32px; margin-top: -10px; background: #09a9cf;\">\r\n");
      out.write("\t\t\t\t<label id=\"time\"></label>\r\n");
      out.write("\t\t\t</div>\t\t\t\r\n");
      out.write("\t\t\t<div class=\"div2\">\t\t\t\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-th-large\" aria-hidden=\"true\" style=\"font-size:18px; \"></span>\r\n");
      out.write("\t\t\t\t系统管理\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div3\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('user/findPage');\">用户管理</a></li>\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-education\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('college/findPage');\">组织管理</a></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('role/findPage');\">角色管理</a></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-heart\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('permission/findPage');\">权限管理</a></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-stop\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('module/findPage');\">模块管理</a></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-edit\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('log/findPage');\">日志管理</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div2\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-bookmark\" aria-hidden=\"true\" style=\"font-size:18px; \"></span>\r\n");
      out.write("\t\t\t\t统计分析\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div3\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-edit\" aria-hidden=\"true\" style=\"margin-left:34px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('stat/marjor');\">专业注册情况</a></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-sort\" aria-hidden=\"true\"  style=\"margin-left:34px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('stat/marjorClass');\">专业班级排名</a></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-heart-empty\" aria-hidden=\"true\"  style=\"margin-left:-10px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('stat/persure');\">压力图</a></span></li>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div2\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-headphones\" aria-hidden=\"true\" style=\"font-size:18px; \"></span>\r\n");
      out.write("\t\t\t\t论坛管理\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div3\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-edit\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('share/findPage');\">分享管理</a></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-unchecked\" aria-hidden=\"true\"  style=\"margin-left:14px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('word/findPage');\">我的留言板</a></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-log-in\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('opinion/findPage');\">意见反馈</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div2\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\" style=\"font-size:18px; \"></span>\r\n");
      out.write("\t\t\t\t公告管理\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div3\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-edit\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('borad/findPage');\">查看公告</a></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-log-in\" aria-hidden=\"true\"></span><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('borad/saveOrUpdate');\">添加公告</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div2\">\r\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-film\" aria-hidden=\"true\" style=\"font-size:18px; \"></span>\r\n");
      out.write("\t\t\t\t前端管理\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"div3\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<!-- <li><span class=\"glyphicon glyphicon-th-list\" aria-hidden=\"true\" style=\"margin-left:18px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('empty.html');\">导航条管理</a></span></li> -->\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-film\" aria-hidden=\"true\" style=\"margin-left:18px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('banFront.jsp');\">轮播图管理</a></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-indent-left\" aria-hidden=\"true\" style=\"margin-left:34px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('acti/findPage');\">活动发布管理</a></span></li>\r\n");
      out.write("\t\t\t\t\t<!-- <li><span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\" style=\"margin-left:34px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('empty.html');\">活动分类管理</a></span></li> -->\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\" style=\"margin-left:34px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('empty.html');\">用户中心管理</a></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\" style=\"margin-left:6px;\"><a class=\"a\" href=\"javascript:void(0);\"\r\n");
      out.write("\t\t\t\t\t\tonClick=\"openurl('enroll/findPage');\">报名管理</a></span></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<a class=\"a1\" href=\"login.jsp\">\r\n");
      out.write("\t\t\t\t<div class=\"div2\">\r\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-off\" aria-hidden=\"true\" style=\"font-size:18px; \"></span>\r\n");
      out.write("\t\t\t\t\t退出后台\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"right\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<iframe id=\"rightFrame\" name=\"rightFrame\" width=\"100%\" height=\"100%\"\r\n");
      out.write("\t\t\tscrolling=\"auto\" marginheight=\"0\" marginwidth=\"0\" align=\"center\"\r\n");
      out.write("\t\t\tstyle=\"border: 0px solid #CCC; margin: 0; padding: 0;\" src=\"welcome.jsp\">\r\n");
      out.write("\t    </iframe>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
