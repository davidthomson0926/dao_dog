<?php

$fields = get_fields();
get_header();
?>

<script type="text/javascript">
    var end_date = "<?=$fields["countdown_end"]?>";
</script>
      
    <section id="countdown">
        <p id="ends-in"><?=$fields["text_before_countdown"]?></p>
        <div id="counter">
            <div id="counter-numbers">
                <span id="counter-numbers-days">--</span>:
                <span id="counter-numbers-hours">--</span>:
                <span id="counter-numbers-minutes">--</span>:
                <span id="counter-numbers-seconds">--</span>
            </div>

            <div id="counting-texts">
                <p id="counting-texts-days">Days</p>
                <p id="counting-texts-hours">Hours</p>
                <p id="counting-texts-minutes">Minutes</p>
                <p id="counting-texts-seconds">Seconds</p>
             </div>
        </div>
        <a href="<?=$fields["button_link"]?>" id="countdown-button"><?=$fields["button_text"]?></a>
    </section>

    <section id="quotes">
        <?php
        $x = 0;
        foreach($fields["quotes"] as $quote){
            ?>
                <div class="quote" data-id='<?=$x?>'>
                    <div class="quote-text">
                        <?=$quote["quote"]?>
                    </div>
                    <p class="quote-author">
                        <?=$quote["quote_by"]?>
                    </p>
                </div>
                <?php
                $x++;
        }
        
        ?>
    </section>
<?php get_footer();?>