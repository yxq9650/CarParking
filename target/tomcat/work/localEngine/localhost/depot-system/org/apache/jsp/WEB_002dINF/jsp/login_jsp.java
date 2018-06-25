package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


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

      out.write('\r');
      out.write('\n');

	pageContext.setAttribute("APP_PATH", request.getContextPath());

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>停车场管理系统</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<!-- Bootstrap -->\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/bootstrap-3.3.5-dist/css/bootstrap.min.css\"\r\n");
      out.write("\trel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/bootstrap-3.3.5-dist/js/jquery-3.0.0.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/bootstrap-3.3.5-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div style=\"width: 100%;height: 100%;background-image: url(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/pic/login.jpg);position: absolute;background-size:100% 100% \">\r\n");
      out.write("\t<form id=\"loginForm\" class=\"form-horizontal\" role=\"form\" style=\"padding-left: 35%;padding-top: 10%;\" action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/toindex\" method=\"post\">\r\n");
      out.write("\t\t<div class=\"form-group\" style=\"width: 50%;text-align: center;\">\r\n");
      out.write("\t\t\t<h2 style=\"color:white\">停车场管理系统</h2>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"form-group\" style=\"width: 50%;\">\r\n");
      out.write("\t\t\t<label for=\"firstname\" class=\"col-sm-2 control-label\" style=\"color:white;\">账号</label>\r\n");
      out.write("\t\t\t<div class=\"col-sm-10\">\r\n");
      out.write("\t\t\t\t<input type=\"text\" class=\"form-control\" id=\"username\" name=\"username\"\r\n");
      out.write("\t\t\t\t\tplaceholder=\"请输入账号\" style=\"width: 80%;\" onblur=\"checkUsernameExit(this)\">\r\n");
      out.write("\t\t\t\t\t<span style=\"color: red\"></span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"form-group\" style=\"width: 50%;\">\r\n");
      out.write("\t\t\t<label for=\"lastname\" class=\"col-sm-2 control-label\" style=\"color:white;\">密码</label>\r\n");
      out.write("\t\t\t<div class=\"col-sm-10\">\r\n");
      out.write("\t\t\t\t<input type=\"password\" class=\"form-control\" id=\"password\" name=\"password\"\r\n");
      out.write("\t\t\t\t\tplaceholder=\"请输入密码\" style=\"width: 80%;\" onblur=\"checkPasswordNull(this)\">\r\n");
      out.write("\t\t\t\t\t<span style=\"color: red\"></span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"form-group\" style=\"width: 70%;\">\r\n");
      out.write("\t\t\t<div class=\"col-sm-offset-2 col-sm-10\">\r\n");
      out.write("\t\t\t\t<button type=\"button\" onclick=\"submitForm()\" class=\"btn btn-default\" style=\"width: 40%\">登录</button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\tfunction submitForm()\r\n");
      out.write("\t{\r\n");
      out.write("\t\tvar data=$(\"#loginForm\").serializeArray();\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\ttype:'get',\r\n");
      out.write("\t\t\turl:'/depot-system/login/index',\r\n");
      out.write("\t\t\tdata:data,\r\n");
      out.write("\t\t\tdataType:'json',\r\n");
      out.write("\t\t\tsuccess:function(result){\r\n");
      out.write("\t\t\t\tif(result.code==200)\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\t$(\"#password\").next(\"span\").text(result.extend.va_msg);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\telse{\r\n");
      out.write("\t\t\t\t$(\"#password\").next(\"span\").text(\"\");\r\n");
      out.write("\t\t\t\t$(\"#loginForm\").submit();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction clearError(item)\r\n");
      out.write("\t{\r\n");
      out.write("\t\t$(item).next(\"span\").text(\"\");\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction checkPasswordNull(item)\r\n");
      out.write("\t{\r\n");
      out.write("\t\tclearError(item);\r\n");
      out.write("\t\tif(item.value==\"\")\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t$(item).next(\"span\").text(\"密码不能为空\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\telse{\r\n");
      out.write("\t\t\t$(item).next(\"span\").text(\"\");\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction checkUsernameExit(item)\r\n");
      out.write("\t{\r\n");
      out.write("\t\tif(item.value==\"\")\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t$(item).next(\"span\").text(\"用户名不能为空\");\r\n");
      out.write("\t\t\t}else{\r\n");
      out.write("\t\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\t\ttype:'get',\r\n");
      out.write("\t\t\t\t\turl:'/depot-system/login/checkUsernameExit',\r\n");
      out.write("\t\t\t\t\tdata:{username:item.value},\r\n");
      out.write("\t\t\t\t\tdataType:'json',\r\n");
      out.write("\t\t\t\t\tsuccess:function(result){\r\n");
      out.write("\t\t\t\t\t\tif(result.code==200)\r\n");
      out.write("\t\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\t\t$(item).next(\"span\").text(result.extend.va_msg);\r\n");
      out.write("\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\telse{\r\n");
      out.write("\t\t\t\t\t\t\tclearError(item);\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
