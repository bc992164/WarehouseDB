<cfoutput>
<!--- *********************** _header ***********************--->
<cfinclude template="/includes/chunks/_header.cfm">


<!--- *********************** _mainMenu ***********************--->
<cfset activeNav = 'mainDashboard'> <!-- set the activeNav variable here before the include so the menu will have the proper thing selected -->
<cfinclude template="/includes/chunks/_mainMenu.cfm">


<!--- *********************** THIS PAGE'S INCLUDE FILE --- this is where your main logic goes for this page ***********************--->
<cfinclude template="/includes/admin/dashboard/_mainDashboard.cfm">

<!--- *********************** THIS PAGE's specific javascript such as (datatables, flot, etc..) ***********************--->



<!--- *********************** _coreJavaScript ***********************--->
<cfinclude template="/includes/chunks/_coreJavaScript.cfm">
<script src="/js/jquery.js"></script>
<script src="/js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
<script src="bs3/js/bootstrap.min.js"></script>
<script src="/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/js/jquery.scrollTo.min.js"></script>
<script src="/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
<script src="/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="/js/skycons/skycons.js"></script>
<script src="/js/jquery.scrollTo/jquery.scrollTo.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="/js/calendar/clndr.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
<script src="/js/calendar/moment-2.2.1.js"></script>
<script src="/js/evnt.calendar.init.js"></script>
<script src="/js/jvector-map/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/js/jvector-map/jquery-jvectormap-us-lcc-en.js"></script>
<script src="/js/gauge/gauge.js"></script>
<!--clock init-->
<script src="/js/css3clock/js/css3clock.js"></script>
<!--Easy Pie Chart-->
<script src="/js/easypiechart/jquery.easypiechart.js"></script>
<!--Sparkline Chart-->
<script src="/js/sparkline/jquery.sparkline.js"></script>
<!--Morris Chart-->
<script src="/js/morris-chart/morris.js"></script>
<script src="/js/morris-chart/raphael-min.js"></script>
<!--jQuery Flot Chart-->
<script src="/js/flot-chart/jquery.flot.js"></script>
<script src="/js/flot-chart/jquery.flot.tooltip.min.js"></script>
<script src="/js/flot-chart/jquery.flot.resize.js"></script>
<script src="/js/flot-chart/jquery.flot.pie.resize.js"></script>
<script src="/js/flot-chart/jquery.flot.animator.min.js"></script>
<script src="/js/flot-chart/jquery.flot.growraf.js"></script>
<script src="/js/dashboard.js"></script>
<script src="/js/jquery.customSelect.min.js" ></script>

<!--- *********************** _footer ***********************--->
<cfinclude template="/includes/chunks/_footer.cfm">
<cfinclude template="/includes/_debug.cfm">
</cfoutput>
	