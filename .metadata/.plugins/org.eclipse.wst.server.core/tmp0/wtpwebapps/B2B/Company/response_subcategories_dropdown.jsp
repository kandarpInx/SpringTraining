<%@page import="com.model.SubCategory"%>
<%@page import="java.util.List"%>
<%@page import="com.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="form-group">
  <label>SubCategory</label>
  <select class="form-control" name="subcategory_id">
    <%
    	int cat_id=Integer.parseInt(request.getParameter("cat_id"));
    
    	Session s=HibernateUtil.getSessionFactory().openSession();
        	
    
    	List<SubCategory> li=s.createQuery("from SubCategory s where s.categoryMaster.id=:id",SubCategory.class)
    							.setParameter("id", cat_id)
    							.list();
    	
    	for(SubCategory sm:li)
    	{
    		%>
    		<option value="<%= sm.getId() %>"><%= sm.getSubcategory_name() %></option>
    		<%
    	}
    %>
  </select>
</div>    