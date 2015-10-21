// 'use strict';

// (function() {
//   this.app.factory('AuthService', ['LogInSession', 'logOutSession',
//    function($localStorage, LocalStorageSingletonServices, LogInSession, logOutSession) {
//     var currentUser;

//    // if session is valid, get current user from Local Storage
//    // if(LocalStorageSingletonServices.getCurrentUser() != undefined)
//    //    currentUser = LocalStorageSingletonServices.getCurrentUser();

//    return {
//      isLoggedIn: function() {
//          return !_.isEmpty(currentUser);
//      },
//      login: function(email, password) {
//        var response = LogInSession.$create({email: email, password: password});
//        response.$then(function(user){
//         currentUser = user;
//         // LocalStorageSingletonServices.setCurrentUser(currentUser);
//         // LocalStorageSingletonServices.setCurrentSchool({});
//        });
//        return response.$promise;
//      },
//      logout: function() {
//        var response = logOutSession.$destroy('current');
//        response.$then(function(user){
//           // LocalStorageSingletonServices.setCurrentUser({});
//           // LocalStorageSingletonServices.setCurrentSchool({});
//           currentUser = {};
//        });
//        return response.$promise;
//      },
//      getSession: function(){
//        return currentUser;
//      }
//    };

//   }]);
// }).call(this);