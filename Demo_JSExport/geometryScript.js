/**
 * Created by 纠结伦 on 2017/3/1.
 */

// geometry.js

// 计算两点间的距离
var euclideanDistance = function(p1, p2) {
    var xDelta = p2.x - p1.x;
    var yDelta = p2.y - p1.y;
    return Math.sqrt(xDelta * xDelta + yDelta * yDelta);
};

// 计算中点
var midpoint = function(p1, p2) {
    var xDelta = (p2.x - p1.x) / 2;
    var yDelta = (p2.y - p1.y) / 2;
    return MyPoint.makePointWithXY(p1.x + xDelta, p1.y + yDelta);
};
