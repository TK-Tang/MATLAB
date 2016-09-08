function [ ] = readData(  )
    mydata = [1:10];

    for ii=2:20
        mydata = [mydata;ii*mydata(1,:)];
    end
    
    mydata
    
    % write the data
    fp = fopen('myfile', 'w'); % open the file for writing, fp is the file pointer

    fwrite(fp, 10, 'int16'); % write the number or columns
    fwrite(fp, 20, 'int16'); % write the number of rows

    for ii=1:10
        fwrite(fp, mydata(:,ii), 'float32'); % write each column in float32 format
    end

    fclose(fp); % close the file


end

