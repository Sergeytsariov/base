qbtuser@nasserver:/home/zanzarah$ incrontab -e

/tank/Downloads/Torrents/temp/add/nnm   IN_CREATE       /home/qbtuser/addtorrent.sh $@
/tank/Downloads/Torrents/temp/add/ruboard       IN_CREATE       /home/qbtuser/addtorrent.sh $@
/tank/Downloads/Torrents/temp/add/lab   IN_CREATE       /home/qbtuser/addtorrent.sh $@
/tank/Downloads/Torrents/temp/add/anilibria     IN_CREATE       /home/qbtuser/addtorrent.sh $@
/tank/Downloads/Torrents/temp/add/other IN_CREATE       /home/qbtuser/addtorrent.sh $@


vim addtorrent.sh
WATCHDIR="$1"
LASTDIR=$(ls -td $WATCHDIR/*/ | head -1)
newdir="$(basename $LASTDIR)"
predir="$(dirname  $LASTDIR)"
predir="$(basename $predir)"
echo $WATCHDIR  $LASTDIR  $newdir  $predir qbt server settings monitored-folder add /tank/Downloads/Torrents/temp/add/$predir/$newdir -s /tank/Downloads/Torrents/$predir/$newdir  >> /home/qbtuser/777
qbt server settings monitored-folder add /tank/Downloads/Torrents/temp/add/$predir/$newdir -s /tank/Downloads/Torrents/$predir/$newdir
