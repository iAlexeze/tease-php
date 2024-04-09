document.getElementById('subscribe-form').addEventListener('submit', function(event) {
    event.preventDefault();
    var email = document.getElementById('email').value;
    alert('Subscription successful! You will receive updates at ' + email);
});
