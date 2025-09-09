import express from "express";

const app = express();
const PORT = process.env.PORT ?? 8080;

app.get("/", (req, res) => {
  res.send("Hello wold!");
});

app.listen(PORT, () => {
  console.log(`Example app listening on  http://localhost:${PORT}`);
});
console.log(saddasd)