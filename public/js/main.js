// this is a partially revealing module pattern - just a variation on what we've already done

const myPortfolio = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),  // grab buttons with class of u-link, this is database stuff
        lightbox = document.querySelector('.lightbox'); /// trigger lightbox when clicked

function renderSocialMedia(socialMedia) {
    return `<ul class="u-social">
        ${socialMedia.map(item => `<li>${item}</li>`).join('')}
    </ul>` // running internal loop for every social media text
}

function parseUserData(piece) { // person is the database result
        // UX/UI would be added in here, e.g. loading animations, etc.
    let targetDiv = document.querySelector('.lb-content'),
        targetImg = lightbox.querySelector('img');

        //this is the stuff inside the lightbox
        // change bioContent
    let bioContent = `
        <p>${piece.Project}</p>
        <h4>Social Media:/</h4>
        ${renderSocialMedia(piece.social)}
    `;
    console.log(bioContent);

    targetDiv.innerHTML = bioContent;
    targetImg.src = piece.imgsrc;

    lightbox.classList.add('show-lb');
}

    function getUserData(event) {  // get user data/property to make our query
       
        event.preventDefault(); // kill the default a tag behaviour (don't navigate anywhere)
        //debugger;
    
        let imgSrc = this.previousElementSibling.getAttribute('src'); // find the image closest to the anchor tag and get its src property

        let url = `/users/${this.getAttribute('href')}`;

        fetch(url) // go get the data  //this statemenet will change the route, the express file will react
            .then(res => res.json()) // parse the json result into a plain object
            .then(data => {
                console.log("my database result is:", data)

                data[0].imgsrc = imgSrc;
                parseUserData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            });
    }

    userButtons.forEach(button => button.addEventListener('click', getUserData))

    lightbox.querySelector('.close').addEventListener('click', function() {
        lightbox.classList.remove('show-lb');
    });

})();