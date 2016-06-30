module.exports = function(server) {
  var router = server.loopback.Router();

  // Install a `/` route that returns server status
  router.get('/', server.loopback.status());

  // simple param
  router.get('/test-param/:name', function(req, res) {
    res.send('Hello, ' + req.param('name'));
  });

  server.use(router);
};
