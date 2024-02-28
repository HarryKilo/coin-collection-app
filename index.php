<!DOCTYPE html>
<html lang='en'>
<head>
    <title>My Mint</title>
    <link rel="stylesheet" href="stylesheet.css"/>
</head>
<body>


<?php
$db = new PDO('mysql:host=db; dbname=coin_app', 'root', 'password');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$query = $db->prepare('SELECT `issuer`, `type`, `obverse`, `reverse`, `grade`, `value`, `image` FROM `coins`;');
$query->execute();

$result = $query->fetchAll();
?>
<div class=siteTitle>MY MINT
    <div class="navSubmitButton">
        <a href="addNewCoin.php">
            <button>ADD A COIN TO MY MINT!</button>
        </a>
    </div>
</div>
<div class="coinsDiv">
    <?php foreach ($result as $output) {
        ?>
        <div class="singleCoin">
        <div class="coinTitle"><?php echo $output ['issuer'] . ", " . $output ['type']; ?></div>
        <div class="coinText"><?php
            echo '<span><b>Issuer: </b>' . $output ['issuer'] . '</span>';
            echo '<span><b>Type: </b>' . $output ['type'] . '</span>';
            echo '<span><b>Obverse: </b>' . $output ['obverse'] . '</span>';
            echo '<span><b>Reverse: </b>' . $output ['reverse'] . '</span>';
            echo '<span><b>Grade: </b>' . $output ['grade'] . '</span>';
            echo '<span><b>Value:</b> £' . $output ['value'] . '</span>';
            ?></div>
        <?php echo '<img class="coinImage" src="' . $output ['image'] . '">'; ?>
        </div> <?php
    }
    ?>
</div>
<a href="#top" class="top">back to top</a>
</body>



