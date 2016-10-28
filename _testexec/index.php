<?php

echo 'Current folder: '.getcwd().'<br><br>';

$destfile='/home/test111/data/www/dev.spbfil.prometeyhome.ru/tmp/0402161706493804.jpg';

$cmd='convert '.getcwd().'/source.jpg -quality 95 -resize 192x288 '.$destfile;

echo 'Executing: '.$cmd.'<br>';

echo exec ($cmd, $ret).'<br>';
print_r($ret);

echo '<br>';


echo 'Result file exists: '.(file_exists($destfile)?'Yes':'No').'<br>';