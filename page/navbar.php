<div class="container">
  <div class="navbar-header">
    <a class="navbar-brand">
      <i class="fa fa-commenting-o"></i> <b>PaChat</b> | Chatbot Matakuliah dan KRS</b>
    </a>
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
      <i class="fa fa-bars"></i>
    </button>
  </div>

      <?php
        $role = 0;    
      ?>

        <div class='collapse navbar-collapse pull-left' id='navbar-collapse'>
        <ul class='nav navbar-nav'>
        <li class="<?php if ($_GET['page'] == 'livechat'){ echo "active"; } ?>"><a href='?page=livechat'>Live Chat <span class="label label-warning">ON</span></a></li>
        </ul>
        </div>

</div>
