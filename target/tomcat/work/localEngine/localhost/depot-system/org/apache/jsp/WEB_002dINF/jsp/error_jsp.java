package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class error_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=utf8");
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

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html lang=\"zh\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"> \r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t<title>识别失败</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/htmleaf-demo.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("\t<!--[if IE]>\r\n");
      out.write("\t\t<script src=\"http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js\"></script>\r\n");
      out.write("\t<![endif]-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"htmleaf-container\">\r\n");
      out.write("\t\t<header class=\"htmleaf-header\">\r\n");
      out.write("\t\t\t<h1>车牌识别失败 <span>missing cardNum</span></h1>\r\n");
      out.write("\t\t\t<div class=\"htmleaf-links\">\r\n");
      out.write("\t\t\t\t<a class=\"htmleaf-icon icon-htmleaf-home-outline\" href=\"http://localhost:8080/depot-system/index/toindex\" title=\"主页\" ><span> 主页</span></a>\r\n");
      out.write("\t\t\t\t<a class=\"htmleaf-icon icon-htmleaf-arrow-forward-outline\" href=\"#\" title=\"返回\" target=\"_blank\"><span> 返回</span></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</header>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<nav class=\"shelf\">\r\n");
      out.write("\t  <a class=\"book home-page\">Home page</a>\r\n");
      out.write("\t  <a class=\"book about-us\">About us</a>\r\n");
      out.write("\t  <a class=\"book contact\">Contact</a>\r\n");
      out.write("\t  <a class=\"book faq\">F.A.Q.</a>\r\n");
      out.write("\t  \r\n");
      out.write("\t  <span class=\"book not-found\"></span>\r\n");
      out.write("\t \r\n");
      out.write("\t  <span class=\"door left\"></span>\r\n");
      out.write("\t  <span class=\"door right\"></span>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t<h1>您上传的车牌让狗子叼走了，不如换张图片试试？或者手动上传</h1>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
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
