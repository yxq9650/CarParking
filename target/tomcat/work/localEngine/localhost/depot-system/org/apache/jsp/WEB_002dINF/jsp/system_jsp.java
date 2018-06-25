package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class system_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=utf-8");
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
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<a id=\"exportIncomeA\" href=\"\"></a>\r\n");
      out.write("\t<button class=\"btn btn-default\" onclick=\"exportIncome()\" type=\"button\">导出收入</button>\r\n");
      out.write("\t<button class=\"btn btn-default\" onclick=\"setCharge()\" type=\"button\">设置收费</button> \r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function exportIncome()\r\n");
      out.write("{\r\n");
      out.write("\tvar html = \"<label>开始时间：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t+ \"<input type=\\\"text\\\" value=\\\"\\\" placeholder=\\\"开始时间\\\" id=\\\"datetimepickerStart\\\"/>\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+ \"<label>结束时间：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t+ \"<input type=\\\"text\\\" value=\\\"\\\" placeholder=\\\"结束时间\\\" id=\\\"datetimepickerEnd\\\"/>\"\r\n");
      out.write("\t\t+ \"</div></div>\";\r\n");
      out.write("\t\t$(\"#myModalLabel\").html(\"导出收入\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").html(\"导出\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").attr(\"onclick\",\"exportIncomeSubmit()\");\r\n");
      out.write("\t\t$(\".modal-body\").append(html);\r\n");
      out.write("\t\t$(\"#myModal\").modal('show');\r\n");
      out.write("\t\t$('#datetimepickerStart').datetimepicker({\r\n");
      out.write("\t\t    format: 'yyyy-mm-dd hh:ii'\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$('#datetimepickerEnd').datetimepicker({\r\n");
      out.write("\t\t    format: 'yyyy-mm-dd hh:ii'\r\n");
      out.write("\t\t});\r\n");
      out.write("}\r\n");
      out.write("function exportIncomeSubmit()\r\n");
      out.write("{\r\n");
      out.write("\tvar datetimepickerStart=$(\"#datetimepickerStart\").val();\r\n");
      out.write("\tvar datetimepickerEnd=$(\"#datetimepickerEnd\").val();\r\n");
      out.write("\t$(\"#myModal\").modal('hide');\r\n");
      out.write("\twindow.location=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/exportIncome?datetimepickerStart=\"+datetimepickerStart+\"&&datetimepickerEnd=\"+datetimepickerEnd;\r\n");
      out.write("}\r\n");
      out.write("function setCharge()\r\n");
      out.write("{\r\n");
      out.write("\tvar html = \"<label>时收费</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t+ \"<input id=\\\"hourmoney\\\" name=\\\"hourmoney\\\" type=\\\"text\\\" class=\\\"form-control\\\" unselectable=\\\"on\\\">\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+\"<label>月收费</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t+ \"<input id=\\\"monthcard\\\" name=\\\"monthcard\\\" type=\\\"text\\\" class=\\\"form-control\\\" unselectable=\\\"on\\\">\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+ \"<label>年收费：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t+ \"<input id=\\\"yearcard\\\" name=\\\"yearcard\\\" type=\\\"text\\\" class=\\\"form-control\\\" unselectable=\\\"on\\\">\"\r\n");
      out.write("\t\t+ \"</div></div>\"\r\n");
      out.write("\t\t+\"<label>违规收费</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t+ \"<input id=\\\"illegal\\\" name=\\\"illegal\\\" type=\\\"text\\\" class=\\\"form-control\\\" unselectable=\\\"on\\\">\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t+ \"</div>\"\r\n");
      out.write("\t\t$(\"#myModalLabel\").html(\"设置收费（空为不修改）\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").html(\"设置\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").attr(\"onclick\",\"setChargeSubmit()\");\r\n");
      out.write("\t\t$(\".modal-body\").append(html);\r\n");
      out.write("\t\t$(\"#myModal\").modal('show');\r\n");
      out.write("}\r\n");
      out.write("function setChargeSubmit()\r\n");
      out.write("{\r\n");
      out.write("\t$.ajax({\r\n");
      out.write("\t\ttype:'post',\r\n");
      out.write("\t\turl:'/depot-system/index/setSystem',\r\n");
      out.write("\t\tdatatype:'json',\r\n");
      out.write("\t\tdata:$(\"#checkForm\").serializeArray(),\r\n");
      out.write("\t\tsuccess:function(data){\r\n");
      out.write("\t\t\tif(data.code==100){\r\n");
      out.write("\t\t\t\talert(\"设置成功!\");\r\n");
      out.write("\t\t\t\t$(\"#myModal\").modal('hide');\r\n");
      out.write("\t\t\t}else{\r\n");
      out.write("\t\t\t\talert(\"设置失败!\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t})\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
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
