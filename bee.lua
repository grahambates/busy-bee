--{
TIC=function()
  --{
  cls(-1)
  for z=120,0,-1 do
    poke(z%48+16320,240/(1+2^(5-z%48/5-z%48*2%3)))
    Z=1000/(z+20)
    for x=20,-20,-1 do
      tri(
      		-- top
        120+Z*(x+math.sin(t/20+x)/2+math.sin(t+x+z)),
        20+Z*(math.sin((t+z)/25)+math.sin(x/10+t/100)*2+7),
        -- bottom-right
        120+Z*(x+.3+math.sin(t+x+z)),
        20+Z*(math.sin((t+z)/25)+math.sin(x/10+t/100)*2+10),
        -- bottom-left
        120+Z*(x-.3+math.sin(t+x+z)),
        20+Z*(math.sin((t+z)/25)+math.sin(x/10+t/100)*2+10),
        z/7-2)
    end
  end
  t=1+t
  --}
end
t=0
OVR=function()
  cls()
  circ(120,5,40,12)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+80,3,15)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+84,5,4)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+84,4,15)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+85,3,4)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+86,2,15)
  elli(113+math.sin(t/100)*20,math.sin(t/70)*10+t%3*80+t%2,6,4,12)
  elli(127+math.sin(t/100)*20,math.sin(t/70)*10+t%3*80+t%2,6,4,12)
end
--}
-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>
