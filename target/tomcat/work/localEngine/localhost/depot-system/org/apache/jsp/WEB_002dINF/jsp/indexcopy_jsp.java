package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class indexcopy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <title>停车位情况</title>\r\n");
      out.write("    <!-- 引入 echarts.js -->\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/js/echarts.min.js\"></script>\r\n");
      out.write("    <!-- 引入jquery.js -->\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<!-- 为ECharts准备一个具备大小（宽高）的Dom -->\r\n");
      out.write("<div id=\"main\" style=\"width: 1260px;height:580px;\"></div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("   var myChart = echarts.init(document.getElementById('main'));\r\n");
      out.write("    // 显示标题，图例和空的坐标轴\r\n");
      out.write(" \r\n");
      out.write("\t\t\tmyChart.showLoading();\r\n");
      out.write("\t\t\tvar ispark = 0;//情况\r\n");
      out.write("\t\t\tvar nopark = 0;\r\n");
      out.write("\t\t\t//var cash = 1;\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\ttype : \"post\",\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\turl : \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/line1\", //请求发送到TestServlet处\r\n");
      out.write("\t\t\tdata : {},\r\n");
      out.write("\t\t\tdataType : \"json\", //返回数据形式为json\r\n");
      out.write("\t\t\tsuccess : function(result) {\r\n");
      out.write("\t\t\t\tif(result){\r\n");
      out.write("\t\t\t\t\tispark=result.ispark;\r\n");
      out.write("\t\t\t\t\tnopark=result.nopark;\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tmyChart.hideLoading(); //隐藏加载动画\r\n");
      out.write("\t\t\t\t\tmyChart.setOption({ //加载数据图表\r\n");
      out.write("\t\t\t\t\t//backgroundColor: '#2c343c',\r\n");
      out.write("\r\n");
      out.write("    title: {\r\n");
      out.write("        text: '停车场停车情况',\r\n");
      out.write("        left: 'center',\r\n");
      out.write("        top: 20,\r\n");
      out.write("        textStyle: {\r\n");
      out.write("            color: '#ccc'\r\n");
      out.write("        }\r\n");
      out.write("    },\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    tooltip : {\r\n");
      out.write("        trigger: 'item',\r\n");
      out.write("        formatter: \"{a} <br/>{b} : {c} ({d}%)\"\r\n");
      out.write("    },\r\n");
      out.write("     toolbox: {\r\n");
      out.write("        feature: {\r\n");
      out.write("            dataView: {show: true, readOnly: false},\r\n");
      out.write("            restore: {show: true},\r\n");
      out.write("            saveAsImage: {show: true}          \r\n");
      out.write("        },\r\n");
      out.write("         top: 80,\r\n");
      out.write("         right: 180\r\n");
      out.write("    },\r\n");
      out.write("    legend: {\r\n");
      out.write("        orient: 'vertical',\r\n");
      out.write("        top: 80,\r\n");
      out.write("        left: 180,\r\n");
      out.write("        data: ['已停车位','未停车位']\r\n");
      out.write("    },\r\n");
      out.write("    series : [\r\n");
      out.write("        {\r\n");
      out.write("            name: '访问来源',\r\n");
      out.write("            type: 'pie',\r\n");
      out.write("            radius : '55%',\r\n");
      out.write("            center: ['50%', '60%'],\r\n");
      out.write("            data:[\r\n");
      out.write("    \r\n");
      out.write("                {value:ispark, name:'已停车位'},\r\n");
      out.write("                {value:nopark, name:'未停车位'}\r\n");
      out.write("            ],\r\n");
      out.write("            itemStyle: {\r\n");
      out.write("                emphasis: {\r\n");
      out.write("                    shadowBlur: 200,\r\n");
      out.write("                    shadowOffsetX: 0,\r\n");
      out.write("                    shadowColor: 'rgba(0, 0, 0, 0.5)'\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("    ]\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("});\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t)\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
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
