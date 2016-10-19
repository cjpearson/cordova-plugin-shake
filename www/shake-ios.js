cordova.define("cordova-plugin-shake.Shake", function(require, exports, module) {

module.exports = (function () {
    "use strict";
    var shake = {};

    var shakeCallBack = null;

    // Start watching the accelerometer for a shake gesture
    shake.startWatch = function (onShake) {
        if (typeof (onShake) !== "function") {
            return;
        }

        shakeCallBack = onShake;
    };

    // Stop watching the accelerometer for a shake gesture
    shake.stopWatch = function () {
        shakeCallBack = null;
    };

    shake.didShake = function () {
        if (shakeCallBack) {
	    shakeCallBack();
	}
    };

    return shake;
})();

});
