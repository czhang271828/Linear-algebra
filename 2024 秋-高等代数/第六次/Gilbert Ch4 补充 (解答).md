### **Disambiguation** 补空间 (也叫直和补) 与正交补的区别. 

**约定** 每处的全空间 $V$ 都是给定域上的线性空间. 默认 $V=\mathbb F^{\dim V}$, 换言之, 单位向量 $\{e_i\}$ 是事先确定的. 

**约定** 只谈 $\mathbb R$, 不谈 $\mathbb C$. 

**定义/性质** 补空间是对一般的线性空间而言的, 无需正交性等限定. 以下给定**一般的域** $\mathbb F$. 记 $V$ 是 $\mathbb F$-线性空间, $U\subset V$ 是线性子空间. 
* 子空间 $U$ 的**补空间**是指另一个子空间 $W$. 满足 $U+W=V$, 且 $U\cap W=0$. 
* 若 $V$ 与 $U$ 是有限维线性空间. 寻找 $W$ 的一种方式如下: 
  * 对 $U$ 找一组基 $\{u_i\}_{i=1}^m$, 并将之扩充为 $V$ 的基 $\{u_i\}_{i=1}^{m+k}$. 
  * 此时, $\mathrm{span}(\{u_i\}_{i=m+1}^{m+k})$ 是补空间 $W$. 
* 需要强调: **补空间存在, 但不必唯一**. 

**记号** $\oplus$ 表示子空间的直和. 记 $U_1$ 与 $U_2$ 是 $V$ 的子空间, 则

* $U_1\cap U_2=0$, 这是使用 $\oplus$ 的前提条件; 
* $U_1\oplus U_2=U_1+U_2$, 这是 $\oplus$ 的实际运算结果.

**习题** 复习[记号规范](https://oc.sjtu.edu.cn/courses/72790/assignments/309121). 解释 $+$ 与 $\oplus$​ 在子集运算中的类似物. 

> 子空间的 $+$ 对应子集的 $\cup$; 
> 子空间的 $\oplus$ 对应子集的 $\dot \cup$ (没有交集的并). 

**定义/性质** 给定有限维 $\mathbb R$-线性空间 $V$. 记 $U\subset V$ 是线性子空间. 称 $W$ 是 $U$ 的**正交补**, 若以下条件同时满足: 

1. $V=U\oplus W$, 这也是补空间的定义; 
2. 对任意 $u\in U$ 与 $w\in W$, 总有 
    $$
    u^T\cdot w := \sum_{i=1}^{\dim V} u_iw_i=0. 
    $$

**问题** 在定义**正交补**时, 补空间与向量点乘的定义式在一般域上也是合理的. 此处为何特地强调 $\mathbb F=\mathbb R$? 

> 原因之一: 我们希望 $\|x\|=0$ 当且仅当 $x=0$.  

**习题** 给定任意域 $\mathbb F$ 上的有限维线性空间 $V$ 及其子空间 $U$. 证明线性空间
$$
W=\{v\in V\mid \text{对任意 }u\in U\text{ 均有 }u^T\cdot v=0\}
$$
的维度是 $\dim V-\dim U$​. 

> zheng

**习题** (本题专供有限域爱好者) 给出 $U\cap W\neq 0$ 的例子; 或进一步地, 给出 $U=W$ 的例子.
* 有限域中, $x^T\cdot x=0$ 是否一定意味着 $x=0$? 这一结论在 $\mathbb R$-线性空间中成立, 并直接定义了向量模长等几何概念. 



**总结** 直和, 补空间, 以及矩阵的四大基本空间对一般的有限维线性空间均适用; 而正交性与正交补是 $\mathbb R$-线性空间的特例. 
* **所谓的**向量点乘在一般的域上可以定义, 通常用于说明四大基本空间的**所谓的**正交性. 这一点乘结构在一般域上仅是一个式子, 其无法给出模长等几何结构, 甚至无法说明直和补!

### 教材 [Gil](http://staff.ustc.edu.cn/~ynyang/2023/books/6.pdf) 补充注释. 

#### 4.1 Orthogonality of the Four Subspaces 

**任务** 这是一些基本要求. 

* 搞懂基本记号. $C(A)=R(A^T)$ 是列空间, $R(A)=C(A^T)$ 是行空间. 通用横行与纵列. 
* 复习[线性空间习题](https://oc.sjtu.edu.cn/courses/72790/assignments/307428)中提及的参考资料, 可以找并绘一些关于四大基本空间的示意图. 
* 明辨直和与正交. 结合上文的 Disambiguation, 向前翻阅教材关于四大基本空间的介绍, 判断作者使用的正交是否可以改作**所谓的**正交?  
* 可以选用[线性空间习题](https://oc.sjtu.edu.cn/courses/72790/assignments/307428)中提及的**第六版 Gilbert**. 

**Problem Set 4.1** 本节中 non-trivial 的定理: Fredholm 二择. 
* 这一定理是对任意域而言的, 本质上和 $\mathbb R$ 没有太大关系. 
* 数域上的线性空间是能谈论正负号的, 此时有**带符号的 Fredholm 二择**, 通常叫 [Farkas lemma](https://en.wikipedia.org/wiki/Farkas%27_lemma). 
* Farkas 引理的其他参考资料: [吴耀琨教授去年的授课笔记](https://math.sjtu.edu.cn/faculty/ykwu/data/TeachingMaterial/20231101.pdf). 
* Fredholm 二择会在今后学习 PDE (或泛函之类的课) 时再次遇到. 

**习题** (直接做的话, **或许算一个挑战**) 记 $V$ 是有限维实线性空间, $U\subset V$ 是子空间. 若 $U$ 中的任意非零向量同时有正项与负项, 则 $U$ 的正交补中一定有各分量全正的向量. 
* 使用 Farkas lemma 会比较快. 
* 实线性空间可以进行符号化 (只保留向量各分量的符号 $\{0,+,-\}$, 舍去具体数值). 对给定的子空间, (是本道习题保证) 符号化空间的正交补等于正交补空间的符号化. 

**定义** 正交补的符号选用 $(-)^\perp$. 例如 $V$ 是有限维实线性空间, 则子空间 $U$ 的正交补是子空间 $U^\perp$. 
* 若 $S\subset V$ 是一般的子集, 则 $S^\perp:=\{v\in V\mid \text{对任意 }u\in S\text{ 都有 }u^T\cdot v\}$. 
* 思考: $\varnothing^\perp$ 是什么, 以及 $V^\perp$ 是什么? 你可以在下一习题中找到灵感. 

**任务** (正交补的性质汇总) 以下 $U,V,W$ 都是全空间的子空间. $S$ 是线性空间的子集.

* 线性空间均是有限维的. 以下习题的证明通常是这样的: **由定义证明一侧的包含关系, 另一侧的包含关系由比较维数得到**. 

以下是与闭包类似的性质. 

1. $(S^\perp)^\perp=\mathrm{span}(S)$.
2. $S^\perp =\mathrm{span}(S)^\perp$. 

以下是一些反序性质. 
1. $(U^\perp)^\perp =U$. 
2. $0^\perp =\text{全空间}$.
3. $\text{全空间}^\perp = 0$. 
4. $U\subset V$ 当且仅当 $V^\perp \subset U^\perp$. 
5. $(U\cap V)^\perp = U^\perp + V^\perp$. 
6. $(U+V)^\perp = U^\perp \cap V^\perp$. 

**任务** 几何认识: 点乘 (特殊的双线性形), 模长, 以及各种等式. 见作业. 

#### 4.2 Projections 

**习题** 给定 $\mathbb R$ 上的方阵 $M$, 试着举出以下三类问题的反例: 
1. $M^2=M\neq M^T$, 
2. $M^T=M^2\neq M$, 
3. $M=M^T\neq M^2$. 

* 第二条反例: $M^T=M^2$ 的通解是 $M=Q^T\begin{pmatrix}S&O\\O&O\end{pmatrix}Q$, 其中 $S$ 是正交矩阵. 

**定义** 需要区别两套名词, 请留意. 
* 对 $M^2=M$ 的矩阵, 一作**幂等矩阵**, 另一作投影矩阵. 
* 对 $M^2=M=M^T$ 的矩阵, 一作**投影矩阵**, 另一作正交投影矩阵. 

我们倾向使用粗体所示的定义. 

**习题** 对矩阵 $P$ 而言, 规则 $P^2=P$ 与 $P^T=P$ 对应了如下事实. 
1. 若 $M^2=M$, 则 $C(M)\oplus N(M)$ 是全空间. 在此前提下, $C(M)\perp N(M)$ 当且仅当 $M^TM$. 
2. 若 $M=M^T$, 则 $u^T \cdot (Mv)=(Mu)^T\cdot v$. 在此前提下... (同上). 

**任务** 给定投影矩阵 $P$, 记 $Q=I-P$. 证明 $N(P)$ 与 $N(Q)$ 互为正交补. 

**任务** 熟悉两类特殊的投影矩阵: 
1. 找出所有秩为 $1$ 的投影矩阵, 即投影至线上. 
2. 找出所有秩为 $n-1$ 的投影矩阵, 即投影至超平面上. 

* 遇到相应的习题, 心中有数即可. 

**习题** (投影矩阵的维度) $\mathrm{tr}(P)$ 是投影矩阵的列空间维度. 
* 学习相似标准型后的一个简单的看法: 由相抵标准型知 $P=S^{-1}\begin{pmatrix}I_r&O\\O&O\end{pmatrix}S$. 结合相似变换即可. 

**习题** 投影矩阵未必交换. 尝试画出 $P_1=\frac{1}{2}\cdot \begin{pmatrix}1&1\\1&1\end{pmatrix}$ 与 $P_2=\begin{pmatrix}1&0\\0&0\end{pmatrix}$, 并用图形说明 $P_1\cdot P_2\neq P_2\cdot P_1$. 

**例子** [课本 P206](http://staff.ustc.edu.cn/~ynyang/2023/books/6.pdf#page=216) 给出了一些对角元为 $\{0,1\}$ 的投影矩阵, 这些矩阵乘积可交换. 
* 一般地, 乘积可交换投影矩阵等价于可同时对角化的投影矩阵. 推广等见[思考题](https://oc.sjtu.edu.cn/courses/72790/assignments/308840). 

**任务** (最近投影问题) 给定子空间 $U\subset V$ 与子空间外的点 $v\in V\setminus U$. 定义最近投影如下: 
* (定义一) 存在 $u\in U$, 使得 $\|u-v\|$ 取到最小值. 
* (定义二) 存在 $u\in U$ 使得 $(u-v)\perp U$. 
* 需证明, 以上 $u$ 唯一. 
  

借由以上, 理解最近投影与误差向量的正交性. 

**习题** 假定 $n\geq 1$. 称 $P\in \mathbb R^{n\times n}$ 是 $\mathbb R^n$ 上的一个投影矩阵, 当且仅当 $P^2=P=P^T$.
* 题 2. 与 3. 在补空间意义下等同, 完成其中一题即可; 4. 与 5. 同理; 6. 与 7. 亦同理.
  
1. 证明: 投影矩阵和子空间双射对应, 具体的对应方式可以是列空间 $P\xleftrightarrow {1:1} C(P)$.
2. 证明: 投影矩阵和子空间双射对应, 具体的对应方式可以是零空间 $P\xleftrightarrow {1:1} N(P)$.
3. 任意给定 $v\neq \mathbf 0$, 找到 $P$ 使得 $C(P)=\mathrm{span}(v)$.
4. 任意给定 $v\neq \mathbf 0$, 找到 $P$ 使得 $N(P)=\mathrm{span}(v)$.
5. 给定 $\mathbb R^5$ 中的列向量 $S=\{(4,3,3,1,1),(6,2,2,2,1)\}$, 找到 $P\in \mathbb R^{5\times 5}$ 使得 $C(P)=\mathrm{span}(S)$.
6. 给定 $\mathbb R^5$ 中的列向量 $S=\{(4,3,3,1,1),(6,2,2,2,1)\}$, 找到 $P\in \mathbb R^{5\times 5}$ 使得 $N(P)=\mathrm{span}(S)$.

* 关于子空间的运算如何转化成投影矩阵的运算, 见[思考题](https://oc.sjtu.edu.cn/courses/72790/assignments/308840). 

**习题** 找两个 $\mathbb R^2$ 中的投影矩阵 $P$ 与 $Q$, 使得 $PQ:(2,0)\mapsto (1,0)$. 
* 一般的结论: 任意不可逆方阵都是有限个投影矩阵的乘积. 

### Least Squares Approximations 

**任务** 会算. 
* 偏导不考.
* 书中仅涉及 $\mathbb R^n$ 中点乘, 但教材 [LADR](https://linear.axler.net/LADR4e.pdf) 中涉及了一般的实内积空间. 假若数学分析学习了 Fourier 分析等知识, 可以回头看看这些题. 

**任务** 如何给非数学专业的学生讲明白最小平方法? 

### 4.4 Orthonormal Bases and Gram-Schmidt 

**例子** 正交矩阵视作映射 $Q:\mathbb R^n\to \mathbb R^n,\quad x\mapsto Qx$. 这是一个刚性的线性变换. 换言之, 以下两点等价.
1. 对一切 $x,y\in \mathbb R^n$, 总有 $(Qx)^T\cdot (Qy)=x^T\cdot y$. 
2. 对一切 $x\in \mathbb R^n$, 总有 $\|Qx\|=\|x\|$. 

**定义** 相同的映射定义作相同的元素对应. 这意味着
* 矩阵 $A=B$, 当且仅当 $x^TAy=x^TBy$ 恒成立. 

此时将正交矩阵的定义抽象作 $QQ^T=I$. 
* 此处要求 $Q$ 是方阵. 等价地, $Q^TQ=I$. 

**任务** 给定正交矩阵 $P$ 与 $Q$, 则 $P\cdot Q$ 与 $P^{-1}$ 均正交 

**任务** 熟悉特殊的正交矩阵 (刚性变换). 
1. 置换矩阵. 
2. $\mathbb R^2$ 中的旋转矩阵 $\begin{pmatrix}\cos\theta&-\sin \theta\\\sin\theta&\cos\theta\end{pmatrix}$. 
3. $\mathbb R^n$ 中的旋转矩阵即 [Given 矩阵](https://en.wikipedia.org/wiki/Givens_rotation). 
4. 比较 [P235](http://staff.ustc.edu.cn/~ynyang/2023/books/6.pdf#page=245) 中 Example 3 给出的反射矩阵, 与先前计算所得的秩为 $n-1$ 的投影矩阵. 

**例子** (手性坐标系) 依照定义, 计算得 $\det Q=\pm 1$. 
* 给定反射矩阵 $R$, 则 $\det R=-1$. 
* 给定置换矩阵 $P$, 则 $\det Q=(-1)^{\text{逆序数}}$, 因为一次逆序无非一次反射. 
* 给定旋转矩阵 $\Theta$, 则 $\det \Theta=1$. 可以将旋转看作一个连续的过程, 即, 存在连续函数 
    $$
    Q:[0,1]\to \text{正交矩阵},\quad t\mapsto Q(t),\quad Q(0)=I,\quad Q(1)=\Theta. 
    $$
    由于 $\det$ 是连续函数 (本质是多项式), 因此 $\det \Theta =\det I=1$. 
* 在往后的学习中, 我们会知道任意 $\det=1$ 的正交矩阵都是若干 (最少几个?) 旋转矩阵的乘积. 因此, 任意正交矩阵是旋转与零次或一次反射的乘积. 

**记号** $O(n)$ 是正交方阵 (乘法群); $SO(n)$ 是行列式为 $1$ 的正交方阵 (乘法群)

**习题** 取 $Q\in O(3)$, 记 $\times$ 是矢量积. 则 
$$
(Qu)\times (Qv)=Q(u\times v). 
$$

**习题** 若 $S\in \mathbb R^{n\times n}$ 是反对称实矩阵, 且 $I+S$ 可逆, 则 $(I+S)^{-1}(I-S)$ 是正交矩阵. 
* 反之, 如何对应? 这建立了哪两类矩阵的双射? 
* 此时, 行列式为 $1$ 的正交矩阵对应哪类反对称矩阵? 
* 类似地, 试研究对应 $S\mapsto e^S$. 

**例子** 更多例子: Hadamard 矩阵. 称 $X\in\mathbb R^{n\times n}$ 是 Hadamard 矩阵, 当且仅当 $X$ 中各分量取值为 $\{\pm 1\}$; 同时, $X$ 是正交矩阵的数乘倍, 即 $XX^T=n\cdot I$. 
* 直接的例子是 $\begin{pmatrix}1&1\\1&-1\end{pmatrix}$. 若 $H$ 是 Hadamard 矩阵, 则 $\begin{pmatrix}H&H\\H&-H\end{pmatrix}$ 亦然. 
* 更多例子见[此网页](http://neilsloane.com/hadamard/).

**任务** (QR 分解) QR 分解的一般步骤见教材. 建议先端详 [P239](http://staff.ustc.edu.cn/~ynyang/2023/books/6.pdf#page=249) 之式 (9). 
* 试给出 RQ 分解. 此时就有 QU, UQ, QL 与 LQ 四种分解.

**例子** QR 分解的推论: 对任意实方阵 $X$, 则存在正交矩阵 $Q$ 与行满秩矩阵 $L$ 使得 $Q\cdot \binom{L}{O}\cdot Q^T$. 

* 推论: 对任意秩为 $r$ 的投影矩阵 $P$, 存在正交矩阵 $Q$ 使得 $Q^T\cdot \begin{pmatrix}I_r&O\\O&O\end{pmatrix}\cdot Q$. 
* 推论: 奇异值分解. 
* 以上 $L$ 可以有更好的形式, 例如 $\{l_{i,j}=0\}_{i>j+1}$. 见 [Hessenberg 形式](https://mathworld.wolfram.com/HessenbergMatrix.html). 

