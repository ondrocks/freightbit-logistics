<%--
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="includes/images/reallogo.png" width="300px"></a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Welcome, SuperUser</a></li>
        <li><a href="#"><img src="includes/images/setting2.png" width="25px"></a></li>
      </ul>
      <!--
      <form class="navbar-form navbar-right">
        <input type="text" class="form-control" placeholder="Search...">
      </form>
      -->
    </div>
  </div>
</div>--%>

<ul class="nav navbar-nav navbar-right navbar-user">

    <li class="dropdown messages-dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> Notifications <span class="badge">3</span> <b class="caret"></b></a>
        <ul class="dropdown-menu" style="min-width: 220px;">

            <li class="message-preview">
                <a href="#">
                    <span class="avatar"><img src="http://placehold.it/50x50"></span>
                    <span class="name">John Smith:</span>
                    <span class="message">3 New Bookings</span>
                    <span class="time"><i class="fa fa-clock-o"></i> 4:34 PM</span>
                </a>
            </li>



        </ul>
    </li>

    <li class="dropdown user-dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Super User <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>

            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
            <li class="divider"></li>
            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
        </ul>
    </li>


</ul>
