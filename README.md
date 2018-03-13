<p>Hallo <br />before I go to my vacation they ask me if can send API to some web system because it was a lot of devices to send and my pc was not have powershell (not web pack) and not python so i develop "cmd as Multiprocessing" using curl.exe <br />what i did is send curl using cmd to the background and control how much "processing" i want running in the same time this was "creative" way to do it fast and finish the job and go to my vacation</p>
<p><br /> to do it first all i cerate cmd the contains the bin of curl and what&nbsp; need he do <br />for example:<br />@ECHO off<br />curl.exe $1<br />timeout /T 1</p>
<p><span style="text-decoration: underline;"><strong>why $1 ?</strong></span><br />because i need send value as var to the background</p>
<p>&nbsp;</p>
<p>after you save your first cmd script lets give it a name "demo.bat" and now we cerate the "main" cmd part<br />for this you need first all write "while read \ for i " <br />for example :<br />for /f "tokens=1 delims=" %%i in (list.txt) do call :part1 %%i<br />goto :fin</p>
<p><span style="text-decoration: underline;"><strong>what is do ?</strong></span><br />he take the list that contains the url\device what you need<br />and read every line until the end of the file</p>
<p>&nbsp;</p>
