# 试卷分析 (以 A 卷为例)

![image-20250620202110757](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620202110757.png)

<div style="page-break-after: always;"></div>

## 第一题 (A 卷题目)

![image-20250620202404840](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620202404840.png)

**正确**. 这是**同构定理 C** 的表述, 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20VI/Ex_24-Mar-2025%20(solution).pdf#page=3).

![image-20250620203004969](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203004969.png)

**正确**. $f$ 单时 $f \circ -$ 单. 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20III/Ex_06-Mar-2025%20(solution).pdf#page=5). 

![image-20250620203219427](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203219427.png)

**错误**. 反例就在试卷上: 见 $\omega$ 所在的题目.

![image-20250620203319200](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203319200.png)

**错误**. 取 $\mathbf v_i$ 全零.

<div style="page-break-after: always;"></div>

## 第一题 (B 卷题目)

![image-20250620203457829](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203457829.png)

**错误**. 反例就在试卷上: 见 $\omega$ 所在的题目.

![image-20250620203518905](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203518905.png)

**正确**. 这是**同构定理 C** 的表述, 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20VI/Ex_24-Mar-2025%20(solution).pdf#page=3).

![image-20250620203557144](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203557144.png)

**正确**. 使用 $x \in \mathbb F^n$ 中向量表示 $\mathbf x \in V$ 在基下的坐标, 则 $<\mathbf x, \mathbf y> = x^TGy$. 此时, $G$ 可逆当且仅当 $\mathrm{null}(G) = 0$, 即 $\mathbf x^\perp$ 总是真子空间 ($\mathbf x \neq \mathbf 0$).

![image-20250620203948858](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620203948858.png)

**错误**. $f$ 满时 $- \circ f$ 单. 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20III/Ex_06-Mar-2025%20(solution).pdf#page=5). 

<div style="page-break-after: always;"></div>

## 第二题

![image-20250620204555272](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620204555272.png)

![image-20250620204604775](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620204604775.png)

回答 I. 说明这是**商空间的泛性质**: 映射 $f \in V^\ast$ 能下降至商空间 $V / W$, 当且仅当 $f(W) = 0$.

回答 II. 使用 $\mathrm{coker}$-对象的定义: $\mathrm{Hom}(\mathrm{coker}(i), \mathbb F) \simeq \ker \mathrm{Hom}(i,\mathbb F)$, 此处 $i : W \subseteq V$. 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20VIII/Ex_10-Apr-2025%20(solution).pdf#page=3).

回答 III. 见恒等式 L2 的证明, 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20IX/exercises%20on%20dual%20spaces%20(solution).pdf#page=6).

![image-20250620205944938](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620205944938.png)

即恒等式 L1 的证明, 见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20IX/exercises%20on%20dual%20spaces%20(solution).pdf#page=6). 由于无限维情况需要 HB 公理, 故此体**必须使用维数或基扩张论证**. 

![image-20250620210311255](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620210311255.png)

该问没有对自然性的要求.有限维空间的同构等价于维数相同.

<div style="page-break-after: always;"></div>

## 第三题

![image-20250620210457444](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620210457444.png)

这是去年强基班的作业原题 (反对称空间之 Schmidt-正交化类似物), 参阅 [2023-2024 春 作业题集, Problem 69](https://share.dyweb.sjtu.cn/course/18169). 

![image-20250620210511539](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620210511539.png)

任取 $\alpha \neq 0$. 由 $\omega$ 非退化, 得 $\omega (\alpha , -) \neq 0$, 即存在 $\beta$ 使得 $\omega (\alpha , \beta) = 1$. 反对称自动保证 $\omega (x,x) = 0$.

![image-20250620211139011](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620211139011.png)

记 $(\alpha _1,\beta _1) := (\alpha , \beta)$. 下证
$$
V = \underset{\text{记作 $V_1$}}{\underbracket{\left[\ker \omega (\alpha _1, -) \cap \ker \omega (\beta_1, -) \right]}} \oplus \underset{\text{记作 $W_1$}}{\underbracket{\mathrm{span}(\alpha _1, \beta _1)}}.
$$
易检验 $V_1 \cap W_1 = 0$, $\dim V_1 \geq (m-2)$, 以及 $\dim W_1 = 2$. 遂得直和关系.

由构造, $\omega (w,v) = 0$ 对一切 $(v,w)\in V_1 \times W_1$ 成立. 对新得的双线性空间 $(V_1, \omega)$ 使用题 (1), 并记 $(\alpha _2,\beta _2) := (\alpha , \beta)$. 

归纳得证.

![image-20250620212611258](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620212611258.png)

回答 I. 使用数学分析的外积. 记 $\{d_i, e_i\}_{i=1}^{n}$ 是 $V$ 的对偶基, 式 $\omega (-,?) = \omega (\Omega (-), \Omega (?))$ 表明
$$
\sum _{i=1}^n(d_i \circ \Omega) \wedge (e_i \circ \Omega) = \sum _{i=1}^n d_i\wedge e_i.
$$
对上式两侧作 $n$ 次外积 ($\eta \mapsto \underset{\text{$n$ 个 $\eta$}}{\underbracket{\eta\wedge \cdots \wedge \eta}}$), 得
$$
(d_1\circ \Omega)\wedge \dots \wedge (d_n\circ \Omega)\wedge (e_1\circ \Omega)\wedge \dots \wedge (e_n\circ \Omega)\\ = d_1\wedge \dots \wedge d_n\wedge e_1\wedge \dots \wedge e_n.
$$
左式是右式的 $\det \Omega$ 倍, 故 $\det \Omega = 1$. 可参考**同济教材**中的涉及行列式与体积形式的章节.

回答 II. 以上标准基对应的 Gram 矩阵是 $J:=\begin{pmatrix}O&I\\-I&O\end{pmatrix}$. 式 $\omega (-,?) = \omega (\Omega (-), \Omega (?))$ 即 $\Omega^T J\Omega = J$. 上学期[作业原题](https://czhang271828.github.io/Linear-algebra/2024%20%E7%A7%8B-%E9%AB%98%E7%AD%89%E4%BB%A3%E6%95%B0/%E7%AC%AC%E4%B9%9D%E6%AC%A1/%E8%A1%8C%E5%88%97%E5%BC%8F%E7%9A%84%E9%81%97%E7%95%99%E9%97%AE%E9%A2%98.pdf#page=8)给出了简单证明, 以及更精细的岩澤(いわさわ)分解.

回答 III. 依照反对称矩阵的 Pfaffian, 得 $\det \Omega \cdot \mathrm{Pf}(J) = \mathrm{Pf}(J) \neq 0$, 即 $\det \Omega = 1$.

<div style="page-break-after: always;"></div>

## 第四题

![image-20250620215357089](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620215357089.png)

![image-20250620215904011](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620215904011.png)

见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20III/Ex_06-Mar-2025%20(solution).pdf#page=5). 同构式 $\mathcal L(V,U) / A \cong \mathcal L(W,U)$ 的说明需要额外公理, 以下是两种可以得满分的回答:

1. 硬气地表明自己不承认选择公理, 指出此题就是错题.
2. 同[作业题解答](https://czhang271828.github.io/Linear-algebra/Week%20III/Ex_06-Mar-2025%20(solution).pdf#page=5), 道明**关键系额外公理** (例如选择公理, 或是弱一些的 (co)flasque 条件). 

![image-20250620220858646](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620220858646.png)

原题所在位置与作答方式同上.

<div style="page-break-after: always;"></div>

## 第五题

![image-20250620220948209](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620220948209.png)

![image-20250620220957684](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620220957684.png)

双线性 $B: U^\ast \& V \to \mathrm{Hom}(U,V),\quad (f,v)\mapsto [u\mapsto f(u)\cdot v]$ 诱导了 $\alpha$, 使得简单张量 $f \otimes v$ 之像是 $[u\mapsto f(u)\cdot v]$.

![image-20250620221213408](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620221213408.png)

本题与张量无关, 因为 $\alpha$ 之像空间即双线性 $B$ 之像的张成空间, 亦即全体秩 $1$ 映射之张成空间.

![image-20250620221939637](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620221939637.png)

任取 $\mathfrak f: =\sum_{i=1}^d f_i \otimes v_i$, 不妨设 $\{f_i\}$ 与 $\{v_i\}$ 均是线性无关集.

假定 $\alpha(\mathfrak f) = 0$, 往证 $\mathfrak f = 0$. 由定义, $\alpha (\mathfrak f)$ 给出一族零线性组合式
$$
\left\{\sum_{i=1}^{d} f_i(u) \otimes v_i = 0\right\}_{u \in U}.
$$
由 $\{v_i\}$ 线性无关, 得一族零向量 $\{f_i(u) = 0\}_{u \in U, 1 \leq i\leq d}$. 因此诸 $f_i = 0$.

![image-20250620224720747](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620224720747.png)

将 $\alpha$ 分解作 $U^\ast \otimes V \overset p\twoheadrightarrow \operatorname{im}(\alpha) \overset i\hookrightarrow \mathrm{Hom}(U,V)$, 既证 $p$ 为同构. 若 $\dim U <\infty$ 或 $\dim V < \infty$, 则 $i$ 满, 即 $\alpha$ 是同构.

<div style="page-break-after: always;"></div>

## 第六题

![image-20250620225745823](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620225745823.png)

![image-20250620225754476](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620225754476.png)

$W \otimes Z$ 中任意张量 $\sum _{\text{有限和}} w_i \otimes z_i$ 总有原像 $\sum _{\text{有限和}} v_i \otimes z_i$, 其中 $f(v_i) = w_i$.

![image-20250620225807605](https://raw.githubusercontent.com/czhang271828/imgs/New_img//n_imgimage-20250620225807605.png)

由 $\mathrm{coker}$ 对象之定义 (见[作业原题](https://czhang271828.github.io/Linear-algebra/Week%20VIII/Ex_10-Apr-2025%20(solution).pdf#page=3)), 仅需说明对一切线性空间 $X$, 总有 $\ker$ 对象
$$
\underset{=\ker(-\circ (g \otimes 1_Z))?}{\underbracket{\mathrm{Hom}(W \otimes Z, X) }}\xrightarrow[\text{单}] {-\circ (f \otimes 1_Z)} \mathrm{Hom}(V \otimes Z, X)\xrightarrow {-\circ (g \otimes 1_Z)} \mathrm{Hom}(U \otimes Z, X).
$$
以自然同构
$$
\mathrm{Hom}(-\otimes !, @) \simeq \mathrm{Hom}(-, \mathrm{Hom}(!, @)) \xlongequal{\text{简化地记作}} (-,(!,@))
$$
等价转换上式, 即证
$$
\underset{=\ker (- \circ g)?}{\underbracket{(W,(Z,X))}}\xrightarrow {-\circ f}(V,(Z,X))\xrightarrow {-\circ g}(U,(Z,X)).
$$
将 $(Z,X)$ 视作整体, 上式无非 $\mathrm{coker}(g) \simeq W$ 之推论.
