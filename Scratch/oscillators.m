function e = oscillators()


fplot( @(t) cos((1+(3/8)*.1)*t) + (1/32)*.1*(cos((3+ (9/8)*.1)*t)-cos((1+(3/8)*.1)*t)), [0, 20])
hold on
fplot( @(t) cos((1+(3/8)*.2)*t) + (1/32)*.2*(cos((3+ (9/8)*.2)*t)-cos((1+(3/8)*.2)*t)), [0, 20])
hold on
fplot( @(t) cos((1+(3/8)*.5)*t) + (1/32)*.5*(cos((3+ (9/8)*.5)*t)-cos((1+(3/8)*.5)*t)), [0, 20])
hold on
fplot( @(t) cos((1+(3/8)*1)*t) + (1/32)*1*(cos((3+ (9/8)*1)*t)-cos((1+(3/8)*1)*t)), [0, 20])