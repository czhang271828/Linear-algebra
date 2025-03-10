---
marp: true
theme: gaia
paginate: true
transition: fade
math: katex
---
<style>
/* @theme academic */
/* Author: kaisugi https://github.com/kaisugi/ (with few changes by author)*/
/* MIT license https://github.com/kaisugi/marp-theme-academic/blob/main/LICENSE */

@import 'gaia';
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Source+Code+Pro&display=swap');

:root {
  --color-background: #fff;
  --color-foreground: #333;
  --color-highlight: #9d2235;
}

section {
  background-image: url('https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/未标题-2.svg'); 
  background-position: 0px 400px;
  background-repeat: no-repeat;
  font-family: 'Trebuchet MS', sans-serif;
  padding-top: 90px;
  padding-left: 40px;
  padding-right: 40px;
}

section:nth-child(even) {
    background-image: url('https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/未标题-1.svg');
    background-position: 0px 400px;
    background-repeat: no-repeat;
    /* Add any additional styles */
}

/* https://github.com/marp-team/marpit/issues/271 */
section::after {
  font-weight: 700;
  content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
}

ul ul {
  font-size: 0.9em;
}

section.lead h1 {
  color: #9d2235;
  text-align: left;
}
section.lead h1 strong {
  -webkit-text-stroke: 1px #9d2235;
}
section.lead h2 {
  color: #9d2235;
  text-align: left;
}
section.lead h2 strong {
  -webkit-text-stroke: 1px #9d2235;
}
section.lead h3 {
  color: #9d2235;
  text-align: left;
}
section.lead h3 strong {
  -webkit-text-stroke: 1px #9d2235;
}
section.lead h4 {
  color: #9d2235;
  text-align: left;
}
section.lead h4 strong {
  -webkit-text-stroke: 1px #9d2235;
}
section.lead h5 {
  color: #9d2235;
  text-align: left;
}
section.lead h6 {
  color: #500000;
  text-align: left;
}
section.lead h5 strong {
  -webkit-text-stroke: 1px #9d2235;
}
section.lead p {
  text-align: right;
}

header {
  background-color: #9d2235;
  color: #fff;
  font-size: 1em;
  font-weight: 700;
}

blockquote {
  max-width: 90%;
  border-top: 0.1em dashed #555;
  font-size: 60%;
  position: absolute;
  bottom: 20px;
}
blockquote::before {
  content: "";
}
blockquote::after {
  content: "";
}

img[alt~="center"] {
  display: block;
  margin: 0 auto;
}

code {
  font-family: 'Source Code Pro', monospace;
}
</style>

<!-- _class: lead -->

# 主标题名称 (`<!-- fit-->` 指令填充整行) <!-- fit-->

###### 副标题(此处采用五级标题)

<br>

**李政道图书馆**
**学号 19262430311987915321**


Shanghai Jiao Tong University
27-December-2023

---

---

---


<!-- _header: Outline -->
<br>

##### <!--fit--> [Marp CLI](https://github.com/marp-team/marp-cli) + [GitHub Pages](https://github.com/pages) | [Netlify](https://www.netlify.com/) | [Vercel](https://vercel.com/)

---

![未标题-2](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/未标题-2.svg)



---

<!-- _class: citationC -->
![bg left:40%](https://upload.wikimedia.org/wikipedia/commons/e/ea/Spinoza.jpg)
> « Les hommes sont conscients de leurs désirs et ignorants des causes qui les déterminent ! »
> > **Spinoza**, *Lettre 58 à Schuller*