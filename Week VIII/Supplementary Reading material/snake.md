This is a hint for **Exercise 6**. 

**Prop** For any composition of linear maps $U \xrightarrow f V \xrightarrow g W$, one has the following induced mapping sequence 
$$
\begin{bmatrix}
 &  & x & \mapsto  & x &  & z & \mapsto  & [ z]_{\operatorname{im} f} &  & [ u]_{\operatorname{im} g\circ f} & \mapsto  & [ u]_{\operatorname{im} g} &  & \\[6pt]
0 & \xrightarrow{h_{1}} & \ker f & \xrightarrow{h_{2}} & \ker g\circ f & \xrightarrow{h_{3}} & \ker g & \xrightarrow{h_{4}} & \frac{V}{\operatorname{im} f} & \xrightarrow{h_{5}} & \frac{W}{\operatorname{im} g\circ f} & \xrightarrow{h_{6}} & \frac{W}{\operatorname{im} g} & \xrightarrow{h_{7}} & 0\\[6pt]
 &  &  &  & y & \mapsto  & f( y) &  & [ w]_{\operatorname{im} f} & \mapsto  & [ g(w)]_{\operatorname{im} g\circ f} &  &  &  & 
\end{bmatrix},
$$
satisfying $\ker h_{i} = \operatorname {im} h_{i+1}$ for $1 \leq i \leq 6$. 

In particular, 

1. If $g$ is injective, then $\ker f = \ker (g \circ f)$, and the following surjection has kernel $\frac{V}{\operatorname{im} f}$: 
   $$
   \frac{W}{\operatorname{im} g \circ f} \twoheadrightarrow \frac{W}{\operatorname{im} g},\quad (w + \operatorname{im}g \circ f) \mapsto  (w + \operatorname{im}g );
   $$

2. If $f$ is surjective, then $\frac{W}{\operatorname{im}(g \circ f)} = \frac{W}{\operatorname{im}(g)}$, and the following surjection has kernel $\ker f$: 
   $$
   \ker g \circ f \twoheadrightarrow \ker g,\quad v \mapsto f(v);
   $$

3. If $g \circ f$ is injective, then so is $f$; 

4. If $g \circ f$ is surjective, then so is $g$; 

5. The middle $h_4$ is factors through
   $$
   \ker g \overset{\text{满}}\twoheadrightarrow \frac{\ker g}{\operatorname {im}f \cap \ker g} \simeq \frac{\operatorname {im}f + \ker g}{\operatorname {im} f} \overset{单}\hookrightarrow \frac{U}{\operatorname{im}(f)}.
   $$

