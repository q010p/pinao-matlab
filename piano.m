function piano ()
  
  whiteButtonHeight = .7;
  blackButtonHeight = .7*whiteButtonHeight;
  whiteButtonWidth = .019;
  blackButtonWidth = .5*whiteButtonWidth;
  blackButtonBottom =whiteButtonHeight- blackButtonHeight;

  
MainFrm = figure ( ...
    'position', [100, 100, 1300, 350]); 

  for i = 0:51
   uicontrol (MainFrm, ...
    'style',    'pushbutton', ... 
    'string',   int2str(i), ...
    'units',    'normalized', ...
    'position', [i*.019, 0, .019, whiteButtonHeight], ...
    'callback', { @pianosound,i,'w' },...
    'BackgroundColor','w');
  end
  for i = 0:35
   if i == 0
     left = 1.5*blackButtonWidth;
   end
   switch (mod(i,5))
        case 0
           if i ~= 0
              left = 15.5*blackButtonWidth + (fix((i-1)/5)*14*blackButtonWidth) ;    
           end
        case 1
              left = 5.5*blackButtonWidth + (fix(i/5)*14*blackButtonWidth) ;    
        case 2
              left = 7.5*blackButtonWidth + (fix(i/5)*14*blackButtonWidth) ;    
        case 3
              left = 11.5*blackButtonWidth + (fix(i/5)*14*blackButtonWidth) ;    
        case 4
              left = 13.5*blackButtonWidth + (fix(i/5)*14*blackButtonWidth) ;    
    end
    uicontrol (MainFrm, ...
    'style',    'pushbutton', ... 
    'string',   'OPEN THE IMAGE', ...
    'units',    'normalized', ...
    'position', [left, blackButtonBottom,blackButtonWidth, blackButtonHeight], ...
    'callback', { @pianosound,i,'b' },...
    'BackgroundColor','k');
  end
  
end