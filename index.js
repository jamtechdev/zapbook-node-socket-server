const express = require("express");
const app = express();
http = require("http");
require("dotenv").config();
const cors = require("cors");
const { Server } = require("socket.io");
app.use(cors());
const server = http.createServer(app);
const io = new Server(server, {
    cors: {
      origin: ["*"],
      methods: ["GET", "POST"],
    },
    transports: ["websocket", "polling"],
    upgrade: false,
    pingInterval: 1000,
    pingTimeout: 150000,
  });

  io.on("connection", async (socket) => {
    console.log(`⚡: ${socket.id} just connected!`);

    socket.on("disconnect", () => {
      console.log(`⚡: ${socket.id} just disconnected!`);
    });
  });

app.get("/", (req, res) => {
    res.send(`Chat server up`);
    next();
});
  server.listen(3000, () => "Server is running on port 3000");

