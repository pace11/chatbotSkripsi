<?php

        include "../../lib/connection.php";
        date_default_timezone_set('Asia/Jakarta');

        $date = date("Y-m-d");

        $sqlpesan = mysqli_query($conn, "SELECT * FROM tbl_pesan
                                         JOIN tbl_basispengetahuan ON tbl_pesan.id_basispeng=tbl_basispengetahuan.id_basispeng 
                                         ORDER BY id_pesan ASC");
        while($tampil = mysqli_fetch_array($sqlpesan)) {
        
    ?>
    <?php
    if (date("Y-m-d", strtotime($tampil['date_in'])) == $date) {
        $loop = 0;
        if ($tampil['role_nama'] == 0) { ?>
            <div class="direct-chat-msg right">
                <div class="direct-chat-info clearfix">
                <span class="direct-chat-name pull-right"><?= $tampil['nama'] ?></span>
                <span class="direct-chat-timestamp pull-left"><?= $tampil['date_in'] ?></span>
                </div>
                <img class="direct-chat-img" src="components/src/dist/img/people.png" alt="message user image">
                <div class="direct-chat-text">
                <?= $tampil['pesan'] ?>
                </div>
            </div>
        <?php } if ($tampil['role_bot'] == 1) { ?>
            <div class="direct-chat-msg">
                <div class="direct-chat-info clearfix">
                <span class="direct-chat-name pull-left">chatBot</span>
                <span class="direct-chat-timestamp pull-right"><?= $tampil['date_in'] ?></span>
                </div>
                <img class="direct-chat-img" src="components/src/dist/img/chatbot.png" alt="message user image">
                <div class="direct-chat-text">
                <?= $tampil['jawaban'] ?>
                </div>
            </div>
        <?php } } else { $loop = 1; } } 
        if ($loop == 1) {
            echo "<div class='callout callout-warning'>";
            echo "<h4>Belum ada percakapan hari ini</h4>";
            echo "<p>Silahkan memulai percakapan dan bertanya dengan mengisi form dibawah :)</p>";
            echo "</div>";
        }
        ?>
