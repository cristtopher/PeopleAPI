'use strict';

module.exports = function(Person) {
  // remote method
  Person.getName = function(dni, cb) {
    Person.find({
      where: {dni: dni}, limit: 1},
      function(err, person) {
        if (err) { cb(null, null); }
        cb(null, person[0].dni, person[0].name);
      });
  };
  Person.remoteMethod(
    'getName',
    {
      accepts: [
        {arg: 'dni', type: 'string'},
      ],
      returns: [
        {arg: 'dni', type: 'string'},
        {arg: 'name', type: 'string'},
      ],
      http: {path: '/getName', verb: 'get'},
    }
  );
};
