--{
TIC=function()
  --{
  cls(-1--|15
  )
  for k=95,0,-1 do
    poke(k%48+16320,255/(1.05+2^(5-k%48/5-k%48*2%3)))
    t=k-m%2/2
    for o=10,-10,-1 do
      tri((o+math.sin(o+m/20)/2+math.sin(o+m//2+k))*1000/t+120,(8-t/20-4-math.sin((o+m)/20)/2)*1000/k+70,(o+.3+math.sin(o+m//2+k))*1000/t+120,(8-t/20)*1000/t+70,(o-.3+math.sin(o+m//2+k))*1000/t+120,(8-t/20)*1000/t+70,k/5-4)
    end
  end
  m=1+m
  --}
end
m=0
OVR=function()
  cls()
  circ(120,10,30,12)
  circ(120+math.sin(m/100)*10,math.sin(m/100+7)*10+70,3,15)
  circ(120+math.sin(m/100)*10,math.sin(m/100+7)*10+75,5,4)
  circ(120+math.sin(m/100)*10,math.sin(m/100+7)*10+75,4,15)
  circ(120+math.sin(m/100)*10,math.sin(m/100+7)*10+76,3,4)
  circ(120+math.sin(m/100)*10,math.sin(m/100+7)*10+77,2,15)
  elli(113+math.sin(m/100)*10,math.sin(m/100+7)*10+m%3%2*73,5,4,12)
  elli(127+math.sin(m/100)*10,math.sin(m/100+7)*10+m%3%2*73,5,4,12)
end
--}
-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>
