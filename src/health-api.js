import express from 'express'
const app = express()
const port = 3000

// respond with "hello world" when a GET request is made to the homepage
app.get('/health', (_req, res) => {
  res.send('i\'m good')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})