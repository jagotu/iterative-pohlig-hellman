def pohligHellmanPGH(p,g,h):
    G=GF(p)(g)
    H=GF(p)(h)
    N=[x[0] for x in factor(p-1)]
    X=[]
    for f in N:
        t = int(G.order()) // int(f)
        dlog = discrete_log(H**t, G**t)
        X.append(dlog)
        
        print("%d (%d/%d)" % (crt(X, N[:len(X)]), len(X), len(N)), flush=True)
