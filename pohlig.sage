def pohligHellmanPGH(p,g,h):
	F=IntegerModRing(p)
	g=F(g)
	h=F(h)
	G=[]
	H=[]
	X=[]
	c=[]
	N=factor(p-1)
	for i in range(0,len(N)):
		G.append(g^((p-1)/(N[i][0]^N[i][1])))
		H.append(h^((p-1)/(N[i][0]^N[i][1])))
		X.append(log(H[i],G[i]))
		c.append((X[i],(N[i][0]^N[i][1])))
		
		#print("G=",G,"\n","H=",H,"\n","X=",X)
		print("%d (%d/%d)" % (crt(X, list(map(lambda x : x[0], N[:len(X)]))), len(X), len(N)), flush=True)