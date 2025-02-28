### 投影, 正交性, 最小平方法.

推荐教材 [LADR](https://linear.axler.net/LADR4e.pdf) 的第六章. 可以暂时跳过复内积空间相关内容.

<div style="page-break-after: always;"></div>

**Problem 1** 以下是一些关于 $\mathbb R^n$ 中向量内积的小题. 任选两题完成, 其中一题需要是 3. 或 4..
* 依通常定义, 点乘 $\braket{u,v}=u^T\cdot v$ 关于两个输入都是线性的.
* 记 $\|v\| =\sqrt{\braket{v,v}}$.

1. 给定 $\|u\|\leq 1$ 与 $\|v\|\leq 1$, 证明: $\sqrt{1-\|u\|^2}\cdot \sqrt{1-\|v\|^2}\leq 1-\braket {u,v}$.
2. 证明: $\|u+v\|\cdot \|u-v\|\leq \|u\|^2+\|v\|^2$.
3. 证明: $\braket{u,v}=0$, 当且仅当 $\|u\|\leq \|u+c \cdot v\|$ 对一切 $c\in \mathbb R$ 成立.
4. 证明: 任意给定 $u\neq \mathbf 0$, 则对一切 $\|v\|=1$ 均有 $\|u-(\|u\|^{-1}\cdot u)\|\leq \|u-v\|$. 换言之, 球面上距 $u$ 最近处恰是 $u$ 的单位化向量.
5. 表述并证明高中所学的极化恒等式.
6. 表述并证明高中所学的平行四边形恒等式.

<div style="page-break-after: always;"></div>

**Challenge** 投影矩阵的和与积都不必是投影矩阵 (实际上, 任何不可逆方阵都是有限个投影矩阵的乘积). 能否优雅地定义投影矩阵间的二元运算 $\sqcap$ 与 $\sqcup$, 使得
$$
C(P_1\sqcup P_2)=C(P_1)+C(P_2),\quad C(P_1\sqcap P_2)=C(P_1)\cap C(P_2).
$$

<div style="page-break-after: always;"></div>

**Problem 2** 计算示例 (最小平方法).

* 如果你想要一些简单的参考资料, 可以查看[这篇笔记](https://www.math.umd.edu/~immortal/MATH401/book/ch_least_squares.pdf).
* 中英日名词对照: 最小平方法, Least Squares Method, 最小二乗法.

1. 使用最小平方法找到一条抛物线 $y=a+bx+cx^2$, 使得该抛物线可以尽可能地拟合以下所有点:
    $$
    \{(-2,4),(-1,2),(0,1),(2,1),(3,1)\}.
    $$
    提示: 可以考虑方程
    $$
    \begin{pmatrix}1&x_1&x_1^2\\1&x_2&x_2^2\\\vdots &\vdots& \vdots \\1&x_n&x_n^2\end{pmatrix}\cdot \begin{pmatrix}a\\ b\\ c\end{pmatrix} =\begin{pmatrix}y_1\\ y_2\\ \vdots \\ y_n\end{pmatrix}.
    $$
    请用严谨的数学语言解释这一所谓的拟合 (应当先定义点到抛物线的距离.).

<div style="page-break-after: always;"></div>

**Challenge** 先前有一道证明题: $\mathbb R^n$ 的任意有限个真子空间之并不是全空间. 此处有一道类似的问题:
* 任取 $\mathbb R^n$ 中有限个真子空间 $\{V_i\}_{i=1}^m$, 则必存在补集中的向量组 $\{f_i\}_{i=1}^n\subset \left(\bigcup_{i=1}^m V_i\right)^c$, 使得 $\braket{f_i,f_j}=\delta_{i,j}$ (单位正交关系).
* 以上 $\{f_i\}_{i=1}^n$ 有无穷多种取法 (这或许是一句废话.).