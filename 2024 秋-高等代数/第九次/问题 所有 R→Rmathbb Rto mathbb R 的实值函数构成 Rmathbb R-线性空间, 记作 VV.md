**问题** 所有 $\mathbb R\to \mathbb R$ 的实值函数构成 $\mathbb R$-线性空间, 记作 $V$. 任取 $\{f_i\}_{i=1}^n$, 证明: $\{f_i\}_{i=1}^n$ 线性无关, 当且仅当存在 $\{x_i\}_{i=1}^n$ 使得 $(f_i(x_j))\in \mathbb R^{n\times n}$ 是可逆矩阵. 

> **解答** 仅证明 $\rightarrow$ 方向. 
>
> 任意 $x\in \mathbb R$ 定义了一个线性映射
> $$
> \delta_x:V\to \mathbb R,\quad f\mapsto f(x).
> $$
> 由定义, $f=0$ 当且仅当 $\delta_x(f)=0$ 对所有 $x\in \mathbb R$​ 成立. 
>
> 定义 $V$ 的 $n$-维线性子空间 $U=\mathrm{span}(\{f_i\}_{i=1}^n)$. 对 $x\in \mathbb R$, 定义 $U$ 的子空间
> $$
> U_x:=\{f\in U\mid \delta_x(f)=f(x)=0\}. 
> $$
> 此时, $\dim U_x\in \{n,n-1\}$. 依照定义, $\bigcap_{x\in \mathbb R}U_x=0$, 因此存在 $x_1$ 使得 $\dim U_{x_1}=n-1$. 类似地, 可以依次找到 $\{x_i\}_{i=1}^n$, 使得有线性真子空间的包含关系
> $$
> 0=\bigcap_{i=1}^n U_{x_i}\subsetneqq \bigcap_{i=1}^{n-1} U_{x_i}\subsetneqq \cdots \subsetneqq \bigcap_{i=1}^1 U_{x_i}\subsetneqq U. 
> $$
> 此时, $\{x_i\}_{i=1}^n$ 即为所求. 