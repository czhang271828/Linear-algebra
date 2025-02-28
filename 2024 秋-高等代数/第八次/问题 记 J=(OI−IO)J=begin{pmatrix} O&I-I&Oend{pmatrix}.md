**问题** 记 $J=\begin{pmatrix} O&I\\-I&O\end{pmatrix}$. 若实矩阵 $A$　　 满足 $AJA^T=J$, 则 $\det A=1$. 

**证明** 记 $A=\begin{pmatrix}A_1&A_2\\A_3&A_4\end{pmatrix}$, 则 
$$
AJ+JA=\begin{pmatrix}A_3-A_2&A_1+A_4\\-(A_1+A_4)&A_3-A_2\end{pmatrix}. 
$$
由 $\det \begin{pmatrix} P&Q\\-Q&P\end{pmatrix}=\det (P+iQ)\cdot \det (P-iQ)\geq 0$ 可知 $\det (AJ+JA)\geq 0$. 

另一方面, 
$$
\underset{\text{行列式非负}}{\underbracket{(AJ+JA)}}\cdot A^T=\underset{\text{行列式正}}{\underbracket{J}}\cdot \underset{\text{行列式正}}{\underbracket{(I+AA^T)}}.
$$
结合 $\det A\in \{\pm 1\}$, 得 $\det A=1$. 