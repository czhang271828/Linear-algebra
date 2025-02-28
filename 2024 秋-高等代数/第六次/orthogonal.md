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

**Problem 2** 假定 $n\geq 1$. 称 $P\in \mathbb R^{n\times n}$ 是 $\mathbb R^n$ 上的一个投影矩阵, 当且仅当 $P^2=P=P^T$.
* 题 2. 与 3. 在补空间意义下等同, 完成其中一题即可; 4. 与 5. 同理; 6. 与 7. 亦同理.

1. 若 $P$ 是投影矩阵, 当且仅当存在正交矩阵 $Q$ 使得 $Q^{-1}PQ = \begin{pmatrix}I_r&O\\O&O\end{pmatrix}$. (如果不清楚正交矩阵, 此题可以略过.)
2. 证明: 投影矩阵和子空间双射对应, 具体的对应方式可以是列空间 $P\xleftrightarrow {1:1} C(P)$.
3. 证明: 投影矩阵和子空间双射对应, 具体的对应方式可以是零空间 $P\xleftrightarrow {1:1} N(P)$.
4. 任意给定 $v\neq \mathbf 0$, 找到 $P$ 使得 $C(P)=\mathrm{span}(v)$.
5. 任意给定 $v\neq \mathbf 0$, 找到 $P$ 使得 $N(P)=\mathrm{span}(v)$.
6. 给定 $\mathbb R^5$ 中的列向量 $S=\{(4,3,3,1,1),(6,2,2,2,1)\}$, 找到 $P\in \mathbb R^{5\times 5}$ 使得 $C(P)=\mathrm{span}(S)$.
7. 给定 $\mathbb R^5$ 中的列向量 $S=\{(4,3,3,1,1),(6,2,2,2,1)\}$, 找到 $P\in \mathbb R^{5\times 5}$ 使得 $N(P)=\mathrm{span}(S)$.

备注: 计算得 $\|(4,3,3,1,1)\|=6$, 以及 $\|(6,2,2,2,1)\|=7$.

<div style="page-break-after: always;"></div>

**Challenge** 投影矩阵的和与积都不必是投影矩阵 (实际上, 任何不可逆方阵都是有限个投影矩阵的乘积). 能否优雅地定义投影矩阵间的二元运算 $\sqcap$ 与 $\sqcup$, 使得
$$
C(P_1\sqcup P_2)=C(P_1)+C(P_2),\quad C(P_1\sqcap P_2)=C(P_1)\cap C(P_2).
$$

<div style="page-break-after: always;"></div>

**Problem 3** 计算示例 (最小平方法).
* 如果你想要一些简单的参考资料, 可以查看[这篇笔记](https://www.math.umd.edu/~immortal/MATH401/book/ch_least_squares.pdf).
* 中英日名词对照: 最小平方法, Least Squares Method, 最小二乗法.

1. 给定 $A=(a_{i,j})\in \mathbb R^{m\times n}$ 与 $b=(b_j)\in \mathbb R^{n}$. 记 $x=(x_i)\in \mathbb R^m$, 则
    $$
    F=\|Ax-b\|^2=\sum_{i=1}^m\left(\sum_{j=1}^na_{i,j}x_j-b_i\right)^2.
    $$
    任给定指标 $1\leq j_0\leq n$, 假设所有 $x_j$ ($j\neq j_0$) 均是常量, 仅 $x_{j_0}$ 是变量. 通过下式计算二次函数 $F=F(x_{j_0})$ 导数为零的点
    $$
    \frac{\operatorname d F}{\operatorname d x_{j_0}} =\frac{\operatorname d }{\operatorname d x_{j_0}}\left[\sum_{i=1}^m\left(\sum_{j=1}^na_{i,j}x_j-b_i\right)^2\right] =0.
    $$
    * $F$ 何时是二次函数? 我们需要排除一些平凡情形, 请稍作说明.
2. 假设上一问中 $F^\prime(x_{j_0})=0$ 的解是 $x_{j_0}=X_{j_0}$. 记解向量 $X=(X_i)\in \mathbb R^m$. 证明 $A^TAX=A^Tb$.
3. (自主思考, 这不是一个问题) 上式合并了有唯一解, 有无穷解, 以及无解这三种情况. 请区分, 讨论这些情况.
4. 使用最小平方法找到一条抛物线 $y=a+bx+cx^2$, 使得该抛物线可以尽可能地拟合以下所有点:
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