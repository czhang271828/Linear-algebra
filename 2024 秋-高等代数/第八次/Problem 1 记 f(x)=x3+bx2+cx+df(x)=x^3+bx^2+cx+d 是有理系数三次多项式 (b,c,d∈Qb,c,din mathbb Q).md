**Problem 1** 记 $f(x)=x^3+bx^2+cx+d$ 是有理系数三次多项式 ($b,c,d\in \mathbb Q$​). 

> 视个人情况完成 $\{1,2\}$. 完成 $\{3,5,7\}$ 或 $\{4,6,8\}$, 这两组题是对称的. 

1. (如果不会, 请写一遍) 数域是什么? 

2. (这与先前的某道题目非常类似, 如果做错了, 请重写一遍.) 假设 $f(x)$ 在 $\mathbb Q$ 上无法因式分解. 任取多项式的一根 $x_0\in \mathbb C$, 证明 $3$ 维 $\mathbb Q$-线性空间 
   $$
   V=\{r+sx_0+tx_0^2\mid r,s,t\in \mathbb Q\}
   $$
   是一个数域. 

3. (接上一问) 取定 $V$ 的一组 $\mathbb Q$-基 $B=(v_1,v_2,v_3)$. 对任意 $\lambda \in V$, 存在矩阵 $M^B_\lambda\in \mathbb Q^{3\times 3}$ 使得
   $$
   \lambda\cdot \begin{pmatrix}v_1\\v_2\\v_3\end{pmatrix}=M^B_\lambda\cdot \begin{pmatrix}v_1\\v_2\\v_3\end{pmatrix};
   $$
   若取另一组基 $B'=(v_1',v_2',v_3')$, 同样可定义 $\lambda\mapsto M_\lambda^{B'}$. 

   试证明: $\det M_\lambda^B=\det M_\lambda^{B'}$. 换言之, $\det M_\lambda$​ 不依赖基的选取.

   > 注释: 将等式解释如下: 
   > $$
   > \underset{\text{属于 $V$}}{\underbracket{\lambda}}\cdot \underset{\text{属于 $V^{3\times 1}$}}{\underbracket{\begin{pmatrix}v_1\\v_2\\v_3\end{pmatrix}}}=\underset{\text{属于 $\mathbb Q^{3\times 3}$, 因此属于 $V^{3\times 3}$}}{\underbracket{M^B_\lambda}}\cdot \underset{\text{属于 $V^{3\times 1}$}}{\underbracket{\begin{pmatrix}v_1\\v_2\\v_3\end{pmatrix}}}
   > $$
   > 是 $V$ 中的运算. 例如 $f=x^3-2$, 取 $B=(1,\sqrt[3]2,\sqrt[3]4)$, $\lambda=1+2\sqrt[3]2+3\sqrt[3]4$, 则 
   > $$
   > (1+2\sqrt[3]2+3\sqrt[3]4)\cdot \begin{pmatrix}1\\\sqrt[3]{2}\\\sqrt[3]{4}\end{pmatrix}=\begin{pmatrix}1&2&3\\6&1&2\\4&6&1\end{pmatrix}\cdot \begin{pmatrix}1\\\sqrt[3]{2}\\\sqrt[3]{4}\end{pmatrix}.
   > $$

4. 证明 $\mathrm{tr}(M_\lambda)$ 也不依赖基的选取. 

5. 仍假定 $f(x)$ 在 $\mathbb Q$ 上无法因式分解. 记 $\{x_1,x_2,x_3\}$ 是 $f$ 在 $\mathbb C$ 上的根. 证明 $\det M_{x_1}=\det M_{x_2}=\det M_{x_3}$.

6. 仍假定 $f(x)$ 在 $\mathbb Q$ 上无法因式分解. 记 $\{x_1,x_2,x_3\}$ 是 $f$ 在 $\mathbb C$ 上的根. 证明 $\mathrm{tr} (M_{x_1})=\mathrm{tr} (M_{x_2})=\mathrm{tr} (M_{x_3})$. 

* 原题 7 与 8 仅用高中知识就能解出, 就不必做了. 同时 7 存在问题 (如 $(x-\sqrt 2)(x+\sqrt 2)x$).