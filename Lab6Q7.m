time;
ave = mean(HongKong);

y = 2.9*exp(0.11 * time);
result = 1 - (sum((y - log(HongKong)).^2) / sum((log(HongKong) - ave).^2))

y = -3.3* time.^(2.8);
result = 1 - (sum((log(y) - log(HongKong)).^2) / sum((log(HongKong) - ave).^2))

y = 38.6 * time - 619;
result = 1 - (sum((y - HongKong).^2) / sum((HongKong - ave).^2))
