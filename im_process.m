function array = imread(Z)
//here Z is the difference of intensity matrix of scanned image and referenced image
//this algorithm performes the processing over the first page of the scanned images
q = [172,278,368,458];//pixel values calculated at every box along x‐axis
que = 1;
p = 1;
i_now = 32;
i_next = i_now + 19;
j_now = 46;
j_next = q(1);
su = 0;
ma = -1;
response = [0,0,0,0,0,0,0,0,0,0,0];
while(que<=11)//question number for the page upto 11
    p = 1;
    while(p<=4)           //for each question iterarting through each part a,b,c,d;
          sum=0;          //finding the sum of intensity in each block and declaring tick at
                          //maximum intensity
        for x = i_now:1:i_next      //for iterating through rows
            for y = j_now:1:j_next  //for iterating through columns
                su = su + Z(x,y);
            end;
        end;
        if(su>ma)
            ma = su;            //finding maximum intensity for a question
            response(que) = p;   //storing corresponding tick mark
        elseif(p~=4)//not equal to
            j_now = q(p);
            j_next = q(p+1);
        else      //if the last part of the current question was checked recently then we are
                  //moving to the next question so updating the columns to initial values
            j_now = 46;
            j_next = q(1);//updating columns
        end;
    end;
    i_now = i_now+23;
    i_next = i_next + 20;//updating rows
    q++;
end;
