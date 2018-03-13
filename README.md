<p>Hallo <br />before I go to my vacation they ask me if can send API to some web system because it was a lot of devices to send and my pc was not have powershell (not web pack) and not python so i develop "cmd as Multiprocessing" using curl.exe <br />what i did is send curl using cmd to the background and control how much "processing" i want running in the same time this was "creative" way to do it fast and finish the job and go to my vacation</p>
<p><br /> to do it first all i cerate cmd the contains the bin of curl and what&nbsp; need he do <br />for example:<br />@ECHO off<br />curl.exe %1<br />timeout /T 1</p>
<p><span style="text-decoration: underline;"><strong>why %1 ?</strong></span><br />because i need send value as var to the background</p>
<p>&nbsp;</p>
<p>after you save your first cmd script lets give it a name "demo.bat" and now we cerate the "main" cmd part<br />for this you need first all write "while read \ for i " <br />for example :<br />for /f "tokens=1 delims=" %%i in (list.txt) do call :part1 %%i<br />goto :fin</p>
<p><span style="text-decoration: underline;"><strong>what is do ?</strong></span><br />he take the list that contains the url\device what you need<br />and read every line until the end of the file</p>
<p>&nbsp;</p>
<p><strong>on this part</strong></p>
<p>:part1<br />echo %1<br />TASKLIST | find /c "cmd" &gt;count.txt<br />set /p ch=&lt;count.txt<br />set str1=%ch%<br />set /A &gt;</p>
<p>echo done</p>
<p>last part is the "finish" to send the loop after reach to end of file.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>you have full demo "POC"with ping you can download and play</p>
<p><strong>and one note</strong></p>
<p><span id="result_box" class="" lang="en"><span class="">I know English here is not perfect.</span> <span class="">But I'm dyslexic and it's part of my unique thinking :)</span></span></p>
<p>fh=%str1%-1<br />IF %fh% GEQ 10 goto :wait<br /><br /></p>
<p>if he see have 10 cmd running he will go to "wait" and three i have sleep for 2 sec and check again<br />if not again he go to sleep 2 sec until i go down from 10 cmd if 1 will close the script will adding 1 more to keep all time 10 cmd runnig</p>
<p>START /B CMD /C CALL "demo.bat" %1 &gt;NUL 2&gt;&amp;1<br />goto :eof</p>
<p>this line send the "demo.bat " to the background and keep&nbsp; do it until end of the file</p>
<p>&nbsp;:wait<br />timeout /T 2<br />goto :part2</p>
<p>block to send the script if you have 10 cmd running and back again to loop</p>
<p>:fin</p>
<p>echo done</p>
<p>last part is the "finish" to send the loop after reach to end of file.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>you have full demo "POC"with ping you can download and play</p>
<p><strong>and one note</strong></p>
<p><span id="result_box" class="" lang="en"><span class="">I know English here is not perfect.</span> <span class="">But I'm dyslexic and it's part of my unique thinking :)</span></span></p>
