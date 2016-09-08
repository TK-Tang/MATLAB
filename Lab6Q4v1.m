mydata = [1:10];

for ii = 2:20
    mydata = [mydata; ii * mydata(1,:)];
end

fp = fopen('myfile4', 'w');

for ii = 1:10
    fwrite(fp, mydata(:,ii), 'float32');
end

save 'myfile4' mydata