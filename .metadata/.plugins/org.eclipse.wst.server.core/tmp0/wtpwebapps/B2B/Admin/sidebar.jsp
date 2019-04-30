<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Category</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="AddCategory.jsp"><i class="fa fa-circle-o"></i> New</a></li>
            <li><a href="ManageCategory.jsp"><i class="fa fa-circle-o"></i> Manage</a></li>
          </ul>
        </li>
        
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>SubCategory</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="AddSubCategory.jsp"><i class="fa fa-circle-o"></i> New</a></li>
            <li><a href="ManageSubCategory.jsp"><i class="fa fa-circle-o"></i> Manage</a></li>
          </ul>
        </li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Member Type</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="AddCompanyMemberType.jsp"><i class="fa fa-circle-o"></i> New</a></li>
            <li><a href="ManageCompanyMemberType.jsp"><i class="fa fa-circle-o"></i> Manage</a></li>
          </ul>
        </li>
        
         <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Logout</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="/B2B/AdminLogoutServlet"><i class="fa fa-circle-o"></i> Logout</a></li>            
          </ul>
        </li>
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
    