<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- jQuery 3 -->
<script src="../AdminTemplate/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../AdminTemplate/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../AdminTemplate/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../AdminTemplate/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../AdminTemplate/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../AdminTemplate/dist/js/demo.js"></script>


<!-- DataTables -->
<script src="../AdminTemplate/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../AdminTemplate/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>


<script src="../AdminTemplate/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>

<!-- page script -->
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>    