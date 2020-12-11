function pianosound (src, event, i, color)
  disp(i)
  if color == 'b'
    switch(mod(i,5))
      case 0
        fr = 29.13524	;
      case 1
        fr = 34.64783;
      case 2
        fr = 38.89087;
      case 3
        fr = 46.24930;
      case 4
        fr = 415.30;
    end
    fr = fr * (power(2,fix(i/5)));
  end
  if color == 'w'
    switch(mod(i,7))
      case 0
        fr = 27.50000;
      case 1
        fr = 30.86771;
      case 2
        fr = 32.70320;
      case 3
        fr = 36.70810;
      case 4
        fr = 41.20344	;
      case 5
        fr = 43.65353	;
      case 6
        fr = 48.99943;
    end
    fr = fr * (power(2,fix((i)/7)));
  end
  Fs = 16000;
  length = .3;
  delay = 0.150;
  t = 0 : 1/Fs : length;
  d = sin(2*pi*fr*t);
sound(d,Fs);
end