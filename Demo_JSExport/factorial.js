/**
 * Created by 纠结伦 on 2017/3/1.
 */

// 计算阶乘
var factorial = function (n) {
    if (n < 0)
        return;
    if (n === 0)
        return 1;
    return n * factorial(n-1)
};

