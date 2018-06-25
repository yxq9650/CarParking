package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.release();
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
      out.write("\r\n");
      out.write("<a id=\"findUser\" href=\"\" target=\"main\"\r\n");
      out.write("\tonclick=\"$('div#main').load(this.href);return false;\"></a>\r\n");
      out.write("<table class=\"table\">\r\n");
      out.write("\t<caption>\r\n");
      out.write("\t\t<div style=\"float: left; line-height: 10px; padding: 10px 10px;\">用户管理</div>\r\n");
      out.write("\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t</caption>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th>序号</th>\r\n");
      out.write("\t\t<th>用户名</th>\r\n");
      out.write("\t\t<th>真实姓名</th>\r\n");
      out.write("\t\t<th>性别</th>\r\n");
      out.write("\t\t<th>联系电话</th>\r\n");
      out.write("\t\t");
      if (_jspx_meth_c_005fif_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t<th>用户卡</th>\r\n");
      out.write("\t\t<th>操作</th>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<ul class=\"pagination\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/findAllUser?tag=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.tag}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("&&page=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"\r\n");
      out.write("\t\t\t\ttarget=\"main\"\r\n");
      out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">&laquo;</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/findAllUser?tag=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.tag}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("&&page=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current+1}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"\r\n");
      out.write("\t\t\t\ttarget=\"main\"\r\n");
      out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current+1}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("</a></li>\r\n");
      out.write("\t\t\t\t");
      if (_jspx_meth_c_005fif_005f5(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t");
      if (_jspx_meth_c_005fif_005f6(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t/* 添加用户模态框显示*/\r\n");
      out.write("\tfunction addUser() {\r\n");
      out.write("        var user_role=$(\"#user_role\").val();\r\n");
      out.write("\t\tvar html = \"<input id=\\\"judgeusername\\\" name=\\\"judgeusername\\\" value=\\\"0\\\" hidden=\\\"hidden\\\"/>\"\r\n");
      out.write("\t\t\t\t+ \"<label>用户账号：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<input id=\\\"username\\\" name=\\\"username\\\" placeholder=\\\"请输入用户账号\\\" type=\\\"text\\\" onblur='findUser()' class=\\\"form-control\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<span style=\\\"color: red;\\\"></span>\"\r\n");
      out.write("\t\t\t\t+ \"</div>\"\r\n");
      out.write("\t\t\t\t+ \"</div>\"\r\n");
      out.write("\t\t\t\t+ \"<label>密码：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<input id=\\\"password\\\" name=\\\"password\\\" placeholder=\\\"输入密码\\\" type=\\\"password\\\" class=\\\"form-control\\\">\"\r\n");
      out.write("\t\t\t\t+ \"</div></div>\"\r\n");
      out.write("\t\t\t\t+ \"<label>确认密码：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t\t\t+ \"<input id=\\\"confrimPass\\\" placeholder=\\\"输入确认密码\\\" type=\\\"password\\\" class=\\\"form-control\\\">\"\r\n");
      out.write("\t\t\t\t+ \"</div></div>\"\r\n");
      out.write("\t\t\t\t+ \"<label>类型：</label>\"\r\n");
      out.write("\t\t\t\t+ \"<select id=\\\"role\\\" name=\\\"role\\\" style=\\\"width:150px\\\" class=\\\"form-control\\\"> \"\r\n");
      out.write("\t\t\t\t+ \"<option value=\\\"3\\\">用户</option>\"\r\n");
      out.write("\t\t\t\t+ \"<option value=\\\"2\\\">管理员</option>\";\r\n");
      out.write("\t\t\tif(user_role==1)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t    html+=+ \"<option value=\\\"1\\\">超级管理员</option>\";\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\thtml+=\"</select>\";\r\n");
      out.write("\t\t$(\"#myModalLabel\").html(\"添加用户\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").html(\"添加\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").attr(\"onclick\", \"addUserSubmit()\");\r\n");
      out.write("\t\t$(\".modal-body\").append(html);\r\n");
      out.write("\t\t$(\"#myModal\").modal('show');\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction findUser() {\r\n");
      out.write("\t\tdebugger;\r\n");
      out.write("\t\tvar username = $(\"#username\").val();\r\n");
      out.write("\t\tif (username == \"\") {\r\n");
      out.write("\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\t$.ajax({\r\n");
      out.write("\t\t\t\ttype : 'get',\r\n");
      out.write("\t\t\t\turl : '/depot-system/index/user/checkUsername',\r\n");
      out.write("\t\t\t\tdatatype : 'json',\r\n");
      out.write("\t\t\t\tdata : {\r\n");
      out.write("\t\t\t\t\tusername : username\r\n");
      out.write("\t\t\t\t},\r\n");
      out.write("\t\t\t\tsuccess : function(data) {\r\n");
      out.write("\t\t\t\t\tif (data.code == 100) {\r\n");
      out.write("\t\t\t\t\t\t$(\"#username\").next(\"span\").text(\"该账号已存在，请重新输入！\");\r\n");
      out.write("\t\t\t\t\t\t$(\"#judgeusername\").val(1);\r\n");
      out.write("\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t$(\"#username\").next(\"span\").text(\"\");\r\n");
      out.write("\t\t\t\t\t\t$(\"#judgeusername\").val(0);\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\tfunction addUserSubmit() {\r\n");
      out.write("\t\tvar username = $(\"#username\").val();\r\n");
      out.write("\t\tvar confrimPass = $(\"#confrimPass\").val();\r\n");
      out.write("\t\tvar password = $(\"#password\").val();\r\n");
      out.write("\t\tvar judgeusername = $(\"#judgeusername\").val();\r\n");
      out.write("\t\tif (username == \"\") {\r\n");
      out.write("\t\t\talert(\"用户名不能为空!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (password == \"\") {\r\n");
      out.write("\t\t\talert(\"密码不能为空!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (confrimPass == \"\") {\r\n");
      out.write("\t\t\talert(\"确认密码不能为空!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (judgeusername == 1) {\r\n");
      out.write("\t\t\talert(\"该账号已存在，请重新输入!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (password != confrimPass) {\r\n");
      out.write("\t\t\talert(\"两次密码输入不一样!\");\r\n");
      out.write("\t\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\ttype : 'post',\r\n");
      out.write("\t\t\turl : '/depot-system/index/user/addUser',\r\n");
      out.write("\t\t\tdatatype : 'json',\r\n");
      out.write("\t\t\tdata : $(\"#checkForm\").serializeArray(),\r\n");
      out.write("\t\t\tsuccess : function(data) {\r\n");
      out.write("\t\t\t\talert(data.extend.va_msg);\r\n");
      out.write("\t\t\t\t$(\"#findUser\").attr(\"href\", \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/findAllUser\");\r\n");
      out.write("\t\t\t\t$(\"#findUser\").click();\r\n");
      out.write("\t\t\t\t$(\"#myModal\").modal('hide');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t})\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t/* 编辑用户模态框显示*/\r\n");
      out.write("\tfunction editUser(uid) {\r\n");
      out.write("        var user_role=$(\"#user_role\").val();\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\ttype:'get',\r\n");
      out.write("\t\t\turl:'/depot-system/index/user/findUserById',\r\n");
      out.write("\t\t\tdata:{uid:uid},\r\n");
      out.write("\t\t\tdataType:'json',\r\n");
      out.write("\t\t\tsuccess:function(data){\r\n");
      out.write("\t\t\t\tif(data.code==100){\r\n");
      out.write("\t\t\t\tvar root=\"<label>权限：</label>\"\r\n");
      out.write("\t\t\t\t\t+ \"<select id=\\\"role\\\" name=\\\"role\\\" style=\\\"width:150px\\\" class=\\\"form-control\\\"> \"\r\n");
      out.write("                    + \"<option value=\\\"2\\\">管理员</option>\";\r\n");
      out.write("\t\t\t\tif(user_role==1)\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("                    root+= \"<option value=\\\"1\\\">超级管理员</option>\";\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("                    root+= \"</select>\";\r\n");
      out.write("\t\t\t\tvar html =\"<input  name=\\\"id\\\" value=\\\"\"+data.extend.user.id+\"\\\" hidden=\\\"hidden\\\">\"\r\n");
      out.write("\t\t\t\t\t+\"<label>用户账号：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"<input id=\\\"username\\\" name=\\\"username\\\" value=\\\"\"+data.extend.user.username+\"\\\" type=\\\"text\\\" readonly class=\\\"form-control\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"</div>\"\r\n");
      out.write("\t\t\t\t\t+ \"</div>\"\r\n");
      out.write("\t\t\t\t\t+\"<label>真实姓名：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"<input id=\\\"name\\\" name=\\\"name\\\" value=\\\"\"+data.extend.user.name+\"\\\" type=\\\"text\\\"  class=\\\"form-control\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"</div>\"\r\n");
      out.write("\t\t\t\t\t+ \"</div>\"\r\n");
      out.write("\t\t\t\t\t+ \"<label>联系电话：</label><div style=\\\"width: 30%;\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"<div class=\\\"input-group\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"<input id=\\\"tel\\\" name=\\\"tel\\\" value=\\\"\"+data.extend.user.tel+\"\\\" type=\\\"text\\\" class=\\\"form-control\\\">\"\r\n");
      out.write("\t\t\t\t\t+ \"</div></div>\"\r\n");
      out.write("\t\t\t\t\t+\"<label>性别：</label>\"\r\n");
      out.write("\t\t\t\t\t+ \"<select id=\\\"sex\\\" name=\\\"sex\\\" style=\\\"width:150px\\\" class=\\\"form-control\\\"> \"\r\n");
      out.write("\t\t\t\t\t+ \"<option value=\\\"男\\\">男</option>\"\r\n");
      out.write("\t\t\t\t\t+ \"<option value=\\\"女\\\">女</option>\" + \"</select>\";\r\n");
      out.write("\t\t\t\t\tif(data.extend.user.role!=3&&data.extend.role==1)\r\n");
      out.write("\t\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t\thtml+=root;\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t$(\"#myModalLabel\").html(\"修改用户\");\r\n");
      out.write("\t\t\t$(\"#checkSubmit\").html(\"修改\");\r\n");
      out.write("\t\t\t$(\"#checkSubmit\").attr(\"onclick\", \"editUserSubmit(\"+data.extend.user.id+\")\");\r\n");
      out.write("\t\t\t$(\".modal-body\").append(html);\r\n");
      out.write("\t\t\t$(\"#myModal\").modal('show');\r\n");
      out.write("\t\t\t$(\"#sex\").val(data.extend.user.sex);\r\n");
      out.write("\t\t\tif(data.extend.user.role!=3&&data.extend.role==1)\r\n");
      out.write("\t\t\t{\r\n");
      out.write("\t\t\t\t$(\"#role\").val(data.extend.user.role);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\telse{\r\n");
      out.write("\t\t\t\t\talert(data.extend.va_msg);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t})\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tfunction editUserSubmit(uid) {\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\ttype : 'post',\r\n");
      out.write("\t\t\turl : '/depot-system/index/user/editUser',\r\n");
      out.write("\t\t\tdatatype : 'json',\r\n");
      out.write("\t\t\tdata : $(\"#checkForm\").serializeArray(),\r\n");
      out.write("\t\t\tsuccess : function(data) {\r\n");
      out.write("\t\t\t\talert(data.extend.va_msg);\r\n");
      out.write("\t\t\t\t$(\"#findUser\").attr(\"href\", \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/findAllUser\");\r\n");
      out.write("\t\t\t\t$(\"#findUser\").click();\r\n");
      out.write("\t\t\t\t$(\"#myModal\").modal('hide');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t})\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t/* 删除用户模态框显示*/\r\n");
      out.write("\tfunction deleteUser(username,id) {\r\n");
      out.write("\t\tvar html = \"<label>确认删除,\"+username+\"吗？</br>删除用户会把该用户所有相关信息删除！</label><div style=\\\"width: 30%;\\\">\";\r\n");
      out.write("\t\t$(\"#myModalLabel\").html(\"删除用户\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").html(\"删除\");\r\n");
      out.write("\t\t$(\"#checkSubmit\").attr(\"onclick\",\"deleteUserSubmit(\"+id+\")\");\r\n");
      out.write("\t\t$(\".modal-body\").append(html);\r\n");
      out.write("\t\t$(\"#myModal\").modal('show'); \r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t/* 删除用户提交 */\r\n");
      out.write("\tfunction deleteUserSubmit(uid){\r\n");
      out.write("\t\t$.ajax({\r\n");
      out.write("\t\t\ttype:'post',\r\n");
      out.write("\t\t\turl:'/depot-system/index/user/deleteUser',\r\n");
      out.write("\t\t\tdatatype:'json',\r\n");
      out.write("\t\t\tdata:{\"uid\":uid},\r\n");
      out.write("\t\t\tsuccess:function(data){\r\n");
      out.write("\t\t\t\tif(data.code==100)\r\n");
      out.write("\t\t\t\t\t{\r\n");
      out.write("\t\t\t\t\t$(\"#myModal\").modal('hide');\r\n");
      out.write("\t\t\t\t\t$(\"#findUser\").attr(\"href\",\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/findAllUser\");\r\n");
      out.write("\t\t\t\t\t$(\"#findUser\").click();\r\n");
      out.write("\t\t\t\t\talert(\"删除成功！\");\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\telse{\r\n");
      out.write("\t\t\t\t\t$(\"#myModal\").modal('hide');\r\n");
      out.write("\t\t\t\t\t$(\"#findUser\").attr(\"href\",\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("/index/findAllUser\");\r\n");
      out.write("\t\t\t\t\t$(\"#findUser\").click();\r\n");
      out.write("\t\t\t\t\talert(data.extend.va_msg);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t})\r\n");
      out.write("\t}\r\n");
      out.write("</script>");
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

  private boolean _jspx_meth_c_005fif_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /WEB-INF/jsp/user.jsp(12,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role!=3 }", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t<button class=\"btn btn-default\" type=\"button\" onclick=\"addUser()\">添加用户</button>\r\n");
        out.write("\t\t<input id=\"user_role\" value=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role!=3 }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("\" hidden=\"hidden\"/>\r\n");
        out.write("\t\t<div class=\"dropdown\" style=\"float: right; margin-right: 10%\">\r\n");
        out.write("\t\t\t<button type=\"button\" class=\"btn dropdown-toggle\" id=\"dropdownMenu1\"\r\n");
        out.write("\t\t\t\tdata-toggle=\"dropdown\">\r\n");
        out.write("\t\t\t\t查看用户 <span class=\"caret\"></span>\r\n");
        out.write("\t\t\t</button>\r\n");
        out.write("\t\t\t<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu1\">\r\n");
        out.write("\t\t\t\t<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\"\r\n");
        out.write("\t\t\t\t\thref=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("/index/findAllUser?tag=3\" target=\"main\"\r\n");
        out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">用户</a></li>\r\n");
        out.write("\t\t\t\t<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\"\r\n");
        out.write("\t\t\t\t\thref=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("/index/findAllUser?tag=2\" target=\"main\"\r\n");
        out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">管理员</a></li>\r\n");
        out.write("\t\t\t\t");
        if (_jspx_meth_c_005fif_005f1(_jspx_th_c_005fif_005f0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("\t\t\t</ul>\r\n");
        out.write("\t\t</div>\r\n");
        out.write("\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
    // /WEB-INF/jsp/user.jsp(27,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role==1 }", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
    if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\"\r\n");
        out.write("\t\t\t\t\thref=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("/index/findAllUser?tag=1\" target=\"main\"\r\n");
        out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">超级管理员</a></li>\r\n");
        out.write("\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f2.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f2.setParent(null);
    // /WEB-INF/jsp/user.jsp(42,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role!=3 }", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f2 = _jspx_th_c_005fif_005f2.doStartTag();
    if (_jspx_eval_c_005fif_005f2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t<th>权限</th>\r\n");
        out.write("\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f2);
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fforEach_005f0.setParent(null);
    // /WEB-INF/jsp/user.jsp(48,1) name = items type = java.lang.Object reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.pages }", java.lang.Object.class, (PageContext)_jspx_page_context, null, false));
    // /WEB-INF/jsp/user.jsp(48,1) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVar("item");
    // /WEB-INF/jsp/user.jsp(48,1) name = varStatus type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVarStatus("status");
    int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
      if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\t\t<tr>\r\n");
          out.write("\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${status.index+1 }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.username }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.name }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.sex }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.tel }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("\t\t\t<td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.role==1?\"超级管理员\":item.role==2?\"管理员\":\"用户\" }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write("</td>\r\n");
          out.write("\t\t\t");
          if (_jspx_meth_c_005fif_005f3(_jspx_th_c_005fforEach_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
            return true;
          out.write("\r\n");
          out.write("\t\t\t<td><input class=\"btn btn-default\" type=\"button\" onclick=\"editUser(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.id}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
          out.write(")\" value=\"修改\">\r\n");
          out.write("\t\t\t");
          if (_jspx_meth_c_005fif_005f4(_jspx_th_c_005fforEach_005f0, _jspx_page_context, _jspx_push_body_count_c_005fforEach_005f0))
            return true;
          out.write("\r\n");
          out.write("\t\t\t\t</td>\r\n");
          out.write("\t\t</tr>\r\n");
          out.write("\t");
          int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fforEach_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fforEach_005f0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f3.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
    // /WEB-INF/jsp/user.jsp(56,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role!=3 }", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f3 = _jspx_th_c_005fif_005f3.doStartTag();
    if (_jspx_eval_c_005fif_005f3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t<td>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.cardnum }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("</td>\r\n");
        out.write("\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f3);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f3);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fforEach_005f0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_005fforEach_005f0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f4.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fforEach_005f0);
    // /WEB-INF/jsp/user.jsp(60,3) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.user.role!=3 }", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f4 = _jspx_th_c_005fif_005f4.doStartTag();
    if (_jspx_eval_c_005fif_005f4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t<input\r\n");
        out.write("\t\t\t\tclass=\"btn btn-default\" type=\"button\" onclick=\"deleteUser( '");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.username }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write('\'');
        out.write(',');
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${item.id}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write(")\" value=\"删除\">\r\n");
        out.write("\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f4);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f4);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f5.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f5.setParent(null);
    // /WEB-INF/jsp/user.jsp(76,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current+1>=users.countPage}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f5 = _jspx_th_c_005fif_005f5.doStartTag();
    if (_jspx_eval_c_005fif_005f5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t<li><a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("/index/findAllUser?tag=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.tag}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("&&page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current+1}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("\"\r\n");
        out.write("\t\t\t\ttarget=\"main\"\r\n");
        out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">&raquo;</a></li>\r\n");
        out.write("\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f5);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f5);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f6 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f6.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f6.setParent(null);
    // /WEB-INF/jsp/user.jsp(81,4) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current+1<users.countPage}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fif_005f6 = _jspx_th_c_005fif_005f6.doStartTag();
    if (_jspx_eval_c_005fif_005f6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t<li><a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${APP_PATH }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("/index/findAllUser?tag=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.tag}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("&&page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${users.current+2}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
        out.write("\"\r\n");
        out.write("\t\t\t\ttarget=\"main\"\r\n");
        out.write("\t\t\t\t\tonclick=\"$('div#main').load(this.href);return false;\">&raquo;</a></li>\r\n");
        out.write("\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f6);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f6);
    return false;
  }
}
