function [A,b,v]=gaussPM(A,b)
n=length(b);
v=[1:n];
for k=1:n-1
  mx=k;
  cx=k;
  for i=k+1:n
    for j=k+1:n
      if (abs(A(i,j))>abs(A(mx,cx)));
        mx=i;
        cx=j;
      endif
    endfor    
  endfor  
  if (A(mx,cx)==0);
    m=1;
  else
    C=A(k,:);
    bb=b(k);
    A(k,:)=A(mx,:);
    A(mx,:)=C;
    b(k)=b(mx);
    b(mx)=bb;
    
    D=A(:,k);
    vv=v(k);
    A(:,k)=A(:,cx);
    A(:,cx)=D;
    v(k)=v(cx);
    v(cx)=vv;    
  endif
  for i=k+1:n
    m=A(i,k)/A(k,k);
    A(i,k)=0;
    for j=k+1:n
      A(i,j)=A(i,j)-m*A(k,j);
    endfor
    b(i)=b(i)-m*b(k);
  endfor  
 endfor  
endfunction
