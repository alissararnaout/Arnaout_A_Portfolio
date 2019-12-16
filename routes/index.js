var express = require('express');
var router = express.Router();
var auth = require('../config/mailto');
var mailer = require('nodemailer');
const sql = require('../utils/sql');

const transporter = mailer.createTransport({
	service: 'gmail',
	auth: {
		user: auth.user,
		pass: auth.pass
	}
});


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Alissar Arnaout' });
});

router.post('/mail', (req, res) => {
	console.log('hit mail route');
	console.log('body: ', req.body);

	// get the mail options from the form -> the url params using bodyParser middleware

	const mailOptions = {
		from: req.body.usermail,
		to: auth.user,
		replyTo: req.body.usermail,
		subject: `From portfolio site: Subject = ${req.body.subject || 'none'}`, // Subject line
		text: req.body.message
	};

	transporter.sendMail(mailOptions, function (err, info) {
		if (err) {
			console.log("failed... ", err);
			res.json(err);
		} else {
			console.log("success! ", info);
			res.json(info);
		}
	});
})



// database stuff

router.get('/', (req, res) => { // req = making request, res = getting response
  // should really get the user data here and then fetch it thru, but let's try this asynchronously
  console.log('at the main route');

 let query = "SELECT ID, Project, ProjKey, Preview FROM tbl_preview";

  sql.query(query, (err, result) => {
      if (err) { throw err; console.log(err); }

      //console.log(result); // should see objects wrapped in an array

      // render the home view with dynamic data
      res.render('home', { piece: result }); // home = handing back data that comes through
  })
})
// localhost:3000/anything
router.get('/users/:id', (req, res) => { // colon is a dynamic placeholder, what you're passing through will come after
  console.log('hit a dynamic route');
  console.log(req.params.id);
 
 let query = `SELECT * FROM tbl_piece WHERE ProjectID="${req.params.id}"`;

  sql.query(query, (err, result) => {
      if (err) { throw err; console.log(err); }

      
      console.log(result); // should see objects wrapped in an array

      // turn our social property into an array - it's just text in the DB
      // which isn't really anything we can work with
      result[0].social = result[0].social.split(",").map(function(item) {
          item = item.trim(); // remove the extra spaces from each word

          return item; // converting array into 3 pieces of text to loop through
      });

      //console.log('after split:', result[0]);

      // send the DB query back to the browser
      res.json(result);
  })
}) 

module.exports = router;
