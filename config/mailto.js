require('dotenv').config()

const mailto = {
    service: 'gmail',
    user: 'alissararnaout@gmail.com',
    pass: process.env.password
}

module.exports = mailto;
