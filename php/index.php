<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Let's Talk</title>
</head>
<body>

<section class="contact-form">

<form action="data/contact.php" method="post"> <!-- method is how you want to send it -->


        <label for="name-field">Name:</label>
        <input id="name-field" name="name" type="text" placeholder="Your Name" required>
  
        <label for="email-field">Email:</label>
        <input id="email-field" name="email" type="email" placeholder="Your Email" required>
    
        <label for="message-field">Inquiry:</label>    
        <textarea name="message" id="text-field" placeholder="Your Inquiry" required></textarea>  


    <button type="submit" class="submit-bttn">LET'S TALK</button>
</form>

</section>

    
</body>
</html>