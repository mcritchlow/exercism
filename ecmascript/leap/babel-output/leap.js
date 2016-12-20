"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = isLeapYear;

function isLeapYear(year) {
  if (year % 4 != 0) return false;
  if (year % 400 == 0) return true;
  if (year % 100 == 0) return false;
  return true;
  // if (year % 4 == 0)
  //   if (year % 400 == 0)
  //     return true;
  //   else if(year % 100 == 0)
  //     return false;
  //   else
  //     return true;
  // else
  //   return false;
}

module.exports = exports["default"];