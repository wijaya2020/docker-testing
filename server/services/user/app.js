require('dotenv').config();
const express = require('express')
const morgan = require('morgan')
const os = require('os')

const app = express()
const PORT = Number(process.env.PORT) || 4001

app.use(morgan('dev'))

app.get('/', (req, res) => {
  res.status(200).json({
    message: 'welcome to intro-docker/users service (just testing) !',
    os: os.platform(),
  })
})

app.get(/users/, async (req, res)=>{
  const users =[{
    id:1,
    username: "Asep1",
    email: "asep@mail.com",
  },{
    id:2,
    username: "Bambang",
    email: "bambang@mail.com",
  },{
    id:3,
    username: "Cecep",
    email: "cecep@mail.com",
 
  }];
  res.status(200).json(users)
})

app.listen(PORT, () => {
  console.log(`this app running on port ${PORT}`)
})
