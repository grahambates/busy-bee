--{
TIC=function()
  --{
  cls(-1)
  for z=140,0,-1 do
    poke(z%48+16320,240/(1+2^(5-z%48/5-z%48*2%3)))
    Z=z-t%2/2
    for x=15,-15,-1 do
      tri(
      		-- top
        (x+math.sin(x+t/20)/2+math.sin(x+t//2+z))*1000/Z+120,
        (5-Z/20-math.sin((z+t//2)/20)-math.sin((t/2)/20))*1000/Z+70,
        -- bottom-right
        (x+.3+math.sin(x+t//2+z))*1000/Z+120,
        (8-Z/20-math.sin((z+t//2)/20)-math.sin((t/2)/20))*1000/Z+70,
        -- bottom-left
        (x-.3+math.sin(x+t//2+z))*1000/Z+120,
        (8-Z/20-math.sin((z+t//2)/20)-math.sin((t/2)/20))*1000/Z+70,
        z/7-5)
    end
  end
  t=1+t
  --}
end
t=0
OVR=function()
  cls()
  circ(120,10,30,12)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+80,3,15)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+84,5,4)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+84,4,15)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+85,3,4)
  circ(120+math.sin(t/100)*20,math.sin(t/70)*10+86,2,15)
  elli(113+math.sin(t/100)*20,math.sin(t/70)*10+t%3*80,6,4,12)
  elli(127+math.sin(t/100)*20,math.sin(t/70)*10+t%3*80,6,4,12)
end
--}
-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>
-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>
