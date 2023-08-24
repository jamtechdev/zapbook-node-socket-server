const { Server } = require("socket.io");
const { SOCKET_EVENTS } = require("./helpers/constants");
const userController = require("../controllers/Users/UsersController"); // Adjust the path
const gameController = require("../controllers/Game/GameController");

function initializeSocket(server) {
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
    const { DISCONNECT } = SOCKET_EVENTS;
    console.log(`⚡: ${socket.id} just connected!`);

    socket.on(DISCONNECT, (socket) => {
      console.log(`⚡: ${socket.id} just disconnected!`);
    });
  });
}
module.exports = initializeSocket;

// socket.on('disconnect', () => {
//     console.log("\x1b[31m", "Disconnected with Socket IO ....");
// });
// socket.on('users', async (request) => {
//     try {
//         // if (request.role_id == '') {
//         //     socket.emit('validation_error', { message: 'role_id parameter is required!' });
//         //     return false;
//         // }
//         const users = await userController.list(request);
//         socket.emit('usersDetails', users);
//     } catch (error) {
//         console.error('Error fetching users:', error);
//     }
// });

// socket.on('bookings', async (request) => {
//     try {
//         const bookings = await gameController.list(request);
//         socket.emit('all_bookings', bookings);
//     } catch (error) {
//         console.error('Error fetching users:', error);
//     }
// });

// socket.on('bookables', async (request) => {
//     try {
//         const bookings = await gameController.bookable_list(request);
//         socket.emit('all_bookables', bookings);
//     } catch (error) {
//         console.error('Error fetching users:', error);
//     }
// })

// socket.on('lane', async (request) => {
//     try {
//         const bookings = await gameController.lane_list(request);
//         socket.emit('all_lanes', bookings);
//     } catch (error) {
//         console.error('Error fetching users:', error);
//     }
// })
