const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000; // Use environment variable or default to 3000

app.get("/", (req, res) => {
    res.send(`Hello from server on port ${PORT}`);
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});



// app.get("/", (req, res) => {
//     res.send("I am an endpoint");
// });

// app.listen(3000, () => {
//     console.log("Listening on port 3000");
// });