### 来自 Gilbert's text book (5th edition).

$\S$ 1.1

![image-20240923193140245](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923193140245.png)

![image-20240923193323026](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923193323026.png)

![image-20240923193338516](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923193338516.png)

$\S$ 1.2

![image-20240923193938008](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923193938008.png)

$\color{\red}\star$ **Prove the following statement in Exercise 1.2.30. ** 

* four of those vectors in the plane would certainly be impossible...

![image-20240923193958320](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923193958320.png)

$\color{\red}\star$ **Finish the challenge question** (possibly not a challenge...)

$\S$ 1.3

![image-20240923194238769](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923194238769.png)

$\color{\red}\star$ You can omit the details and **just write down the answers**. 

![image-20240923194305046](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923194305046.png)

$\color{\red}\star$ You can omit the details and **just write down the answers**. 

![image-20240923194552073](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20240923194552073.png)

$\color{\red}\star$ You can omit the details and **just write down the answers**. 

### 来自第一节习题课. 

以下仅涉及 $2\times 2$ 矩阵.

**Exercise 1.** 给定矩阵 $A=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}$, $B= \begin{pmatrix}b_{11}&b_{12}\\b_{21}&b_{22}\end{pmatrix}$​. 

1. 按照通常的方法计算 $A\cdot B$​. 

2. 在第 1 问的计算中, 我们使用了几次乘法, 几次加法? 

3. 给出以下 $7$ 个乘法式: 
   $$
   \begin{align}
   S_1&=(a_{11}+a_{21})(b_{11}+b_{12}),\\[6pt]
   S_2&=(a_{12}+a_{22})(b_{21}+b_{22}),\\[6pt]
   S_3&=(a_{11}-a_{22})(b_{11}+b_{22}),\\[6pt]
   S_4&=a_{11}(b_{12}-b_{22}),\\[6pt]
   S_5&=(a_{21}+a_{22})b_{11},\\[6pt]
   S_6&=(a_{11}+a_{12})b_{22},\\[6pt]
   S_7&=a_{22}(b_{21}-b_{11}),
   \end{align}
   $$
   请验证 
   $$
   A\cdot B=\begin{pmatrix}S_2+S_3-S_6-S_7&S_4+S_6\\S_5+S_7&S_1-S_3-S_4-S_5\end{pmatrix}.
   $$

4. 考虑第 3 问就 $A\cdot B$ 的算法, 我们使用了几次乘法, 几次加法? 

**Exercise 2** 给定矩阵 $A=\begin{pmatrix}a&b\\c&d\end{pmatrix}$. 

1. 记 $B=\begin{pmatrix}d&-b\\-c&a\end{pmatrix}$, 计算 $A\cdot B$ 与 $B\cdot A$. 

2. 给定 $S=\begin{pmatrix}\frac {1-\sqrt 5}2&\frac {1+\sqrt 5}2\\1&1\end{pmatrix}$, 找到矩阵 $T$ 使得 $S\cdot T=T\cdot S=\begin{pmatrix}1&0\\0&1\end{pmatrix}$​. 

3. 求出 $\lambda_1$ 与 $\lambda_2$, 使得
   $$
   S\cdot \begin{pmatrix}\lambda_1&0\\0&\lambda_2\end{pmatrix}\cdot T=\begin{pmatrix}1&1\\1&0\end{pmatrix}.
   $$

4. 给定数列首项 $a_0=a_1=1$, 通项 $a_{n+2}=a_{n+1}+a_n$. 证明
   $$
   \begin{pmatrix}a_{n+2}\\a_{n+1}\end{pmatrix}=\begin{pmatrix}1&1\\1&0\end{pmatrix}\cdot \begin{pmatrix}a_{n+1}\\a_n\end{pmatrix}.
   $$

5. 求出 $\{a_n\}$ 通项. 

6. 如果你在中学学过线性递推数列的特征根法, 请与上法比较. 

**Exercise 3** 回忆习题课上的类比: $a+ib=\begin{pmatrix}a&b\\-b&a\end{pmatrix}$. 记 $S$ 是所有形如右式的矩阵构成的集合. 

1. 请问 $S$ 中矩阵的加法, 乘法, 转置, 行列式, 迹分别对应复数中的什么运算? 
2. 构造矩阵 $A$, 使得 $A^{2023}=\begin{pmatrix}1&0\\0&1\end{pmatrix}\neq A$​​. 
3. 依照原点处的 Taylor 展开 $e^z=\frac{z^0}{0!}+\frac{z^1}{1!}+\frac {z^2}{2!}+\cdots$, 计算 $e^{\begin{pmatrix}a&b\\-b&a\end{pmatrix}}$. 尝试使用极限语言以说明这一矩阵级数和是收敛的. 
4. 查询四元数的定义 (使用记号 $i^2=j^2=k^2=ijk=-1$, 此处 $i$ 可直接视作复数). 能否将四元数表示成 $2$-阶复矩阵? 







