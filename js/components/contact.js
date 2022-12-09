export default {
    data: function() {
        return {};
    },
    template: `
    <div class="col-5 margin-center margin-top-5 margin-bot-5">
    <form action="./includes/send.php" method="POST" class="background-linght-gray border padding-5">

<div class="margin-bot-4 text-center margin-center contact-header">Contact</div>
<h4 class="text-center" style="font-weight:300">To work with me and collaborate please fill out to form and reach out to me, thanks!</h4>

<input type="text" name="firstname" required class="form-control margin-bot-4" placeholder="First Name">

<input type="text" id="lastname" required name="lastname" class="form-control margin-bot-4" placeholder="Last Name">
<input type="email" name="email" required class="form-control margin-bot-4" placeholder="E-Mail">
<input type="text" name="subject" required class="form-control margin-bot-4" placeholder="Subject">
<textarea required class="form-control margin-bot-4" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>


<div class="flex-box flexcontent-center">
<button class="btn button-lightblue margin-y-4 hover-button" type="submit">Submit</button>
</div>
</form>
</div>
    `,
};