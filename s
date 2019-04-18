[1mdiff --git a/google-search-page-css.css b/google-search-page-css.css[m
[1mindex 8bfec5a..8509146 100644[m
[1m--- a/google-search-page-css.css[m
[1m+++ b/google-search-page-css.css[m
[36m@@ -1,18 +1,26 @@[m
 html {[m
     font-family: arial,sans-serif;[m
     color: rgb(10, 10, 10);[m
[31m-    min-width: 600px;[m
 }[m
 a {[m
     text-decoration: none;[m
     color: #5f6368;[m
 }[m
[31m-[m
[32m+[m[32mbody {[m
[32m+[m[32m    height: 100%;[m
[32m+[m[32m    min-width: 900px;[m
[32m+[m[32m    min-height: 600px;[m
[32m+[m[32m    position: relative;[m
[32m+[m[32m}[m
 [m
 /* Editing header elements */[m
 #gmail, #images {[m
     font-size: 13px;[m
     margin: 10px;[m
[32m+[m[32m    color: #222;[m
[32m+[m[32m}[m
[32m+[m[32m#gmail:hover, #images:hover {[m
[32m+[m[32m    text-decoration: underline;[m
 }[m
 img[alt="menu"] {[m
     width: 20px;[m
[36m@@ -37,7 +45,7 @@[m [mimg[alt="menu"] {[m
     justify-content: flex-end;[m
     align-items: center;[m
     padding-top: 10px;[m
[31m-    margin-right: 20px;[m
[32m+[m[32m    margin-right: 25px;[m
 }[m
 [m
 [m
[36m@@ -71,6 +79,40 @@[m [mimg[alt="voice-search"] {[m
 #search-bar:hover {[m
     box-shadow: 1px 2px 4px -2px #0000004d;[m
 }[m
[32m+[m[32m#search-buttons {[m
[32m+[m[32m    margin-top: 20px;[m
[32m+[m[32m    position: relative;[m
[32m+[m[32m}[m
[32m+[m[32m.clickable {[m
[32m+[m[32m    height: 36px;[m
[32m+[m[32m    line-height: 36px;[m
[32m+[m[32m    font-size: 14px;[m
[32m+[m[32m    padding: 0 16px;[m
[32m+[m[32m    border: 0px solid;[m
[32m+[m[32m    background-color: rgb(242, 242, 242);[m
[32m+[m[32m    color: #5f6368;[m
[32m+[m[32m}[m
[32m+[m[32m.clickable:hover {[m
[32m+[m[32m    border: 1px solid #c6c6c6;[m
[32m+[m[32m    border-radius: 5px;[m
[32m+[m[32m    box-shadow: 0 1px 1px rgba(0,0,0,0.1);[m
[32m+[m[32m    color: #222;[m
[32m+[m[32m    margin-top: -1px;[m
[32m+[m[32m    margin-left: -1px;[m
[32m+[m[32m    margin-right: -1px;[m
[32m+[m[32m    background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);[m
[32m+[m[32m}[m
[32m+[m[32minput[value="Google Search"] {[m
[32m+[m[32m    display: block;[m
[32m+[m[32m    position: absolute;[m
[32m+[m[32m    left: 39%;[m
[32m+[m[32m}[m
[32m+[m[32minput[value="I'm Feeling lucky"] {[m
[32m+[m[32m    display: block;[m
[32m+[m[32m    position: absolute;[m
[32m+[m[32m    top: 0px;[m
[32m+[m[32m    right:39%;[m[41m   [m
[32m+[m[32m}[m
 [m
 [m
 [m
[36m@@ -95,21 +137,16 @@[m [mfooter {[m
 #bottom-section {[m
     line-height: 41px;[m
     border-top: 1px solid #ddd;[m
[31m-    padding-left: 20px;[m
[32m+[m[32m    padding-left: 15px;[m
[32m+[m[32m    min-width: 900px;[m
 }[m
 #div-left, #div-right {[m
     display: inline-block;[m
[31m-    width: 45vw;[m
[31m-}[m
[31m-#div-left {[m
[31m-    [m
[32m+[m[32m    width: 49%;[m
 }[m
 #div-right {[m
     text-align: right;[m
[31m-    padding-right: -10px;[m
[31m-    margin-right: -3vw;[m
 }[m
 .bottom-left, .bottom-right {[m
[31m-    padding: 10px;[m
[31m-    [m
[31m-}[m
\ No newline at end of file[m
[32m+[m[32m    padding: 13px;[m[41m  [m
[32m+[m[32m}[m
[1mdiff --git a/google-search-page.html b/google-search-page.html[m
[1mindex 5d1874b..ba75f8a 100644[m
[1m--- a/google-search-page.html[m
[1m+++ b/google-search-page.html[m
[36m@@ -5,20 +5,22 @@[m
     </head>[m
     <body>[m
         <header id="flex-container">[m
[31m-            <div id="gmail">Gmail</div>[m
[31m-            <div id="images">Images</div>[m
[31m-            <img src="items/menu-grid.png" alt="menu">[m
[31m-            <div class="name">N</div>[m
[32m+[m[32m            <a href="#" id="gmail">Gmail</a>[m
[32m+[m[32m            <a href="#" id="images">Images</a>[m
[32m+[m[32m            <a href="#"><img src="items/menu-grid.png" alt="menu"></a>[m
[32m+[m[32m            <a><div class="name">N</div></a>[m
         </header>[m
         [m
         <main>[m
             <img src="items/googlelogo.png" alt="google logo" id="google-logo"><br>[m
             <div id="search-bar-div">[m
[31m-                <input type="url" name="search-bar" id="search-bar" placeholder="Search Google or type a URL"><br>[m
[32m+[m[32m                <input type="url" name="search-bar" id="search-bar"><br>[m
                 <img src="items/google-voice-search.png" alt="voice-search">[m
             </div>[m
[31m-            <input type="button" value="Google Search">[m
[31m-            <input type="button" value="I'm feeling lucky">[m
[32m+[m[32m            <div id="search-buttons">[m
[32m+[m[32m                <input class="clickable" type="button" value="Google Search">[m
[32m+[m[32m                <input class="clickable" type="button" value="I'm Feeling lucky">[m
[32m+[m[32m            </div>[m
         </main>[m
         [m
         <footer>[m
