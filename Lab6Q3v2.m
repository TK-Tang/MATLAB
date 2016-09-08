function rowdata = readData(filename, colNumber)

    fp = fopen(filename, 'r'); % open the file for reading
    numcols = fread(fp,1, 'int16')
    numrows = fread(fp,1, 'int16')
    
    numbytes = 4; % specify the number of bytes in a float32
    offset = 4; %2 bytes for numrows plus 2 bytes for numcols is the header offset
    seekpos = offset + colNumber * numbytes * numrows;
    fseek(fp, seekpos, 'bof'); 
    
    % set the file pointer to the correct position in the file
    colData = fread( fp, numrows, 'float32')
    
end
