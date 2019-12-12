<?php 
    if(empty($_POST)){
        echo 'Nooo';
        exit;
    }
    $name = '';
    $email = '';
    $message = '';
    $recipient = 'alissar@arnaout.com';
    
    //Some validations
    if(isset($_POST['name'])){
        $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
    }
    if(isset($_POST['email'])){
        $email = str_replace(array("\r","\n","%0a","%0d"),'',$_POST['email']);
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);
    }
    
    if(isset($_POST['message'])){
        $message = $_POST['message'];
    }
    //TODO:set up your own noreplay email on your domain
    // and then replace the following email by yours noreply email
    $headers = [
        'From'=>'noreply@alissar.com',
        'Reply-To'=>$name.'<'.$email.'>'
    ];
    if(mail($recipient, $subject, $message, $headers)){
        echo '<p>Thanks for your inquiry,'.$name.'. I will get back to you within 24 hours.</p>';
    }else{
        echo '<p>Oops! It looks like something went wrong.</p>';
    }
?>