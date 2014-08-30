#!/bin/sh

dstat -tcm -C 0,1,2,3,4,5,6,7 --output ~/dstat_results/ruby_benchmark_suite_dstat_result.csv > /dev/null &

echo "2.1.2" > ~/ruby-benchmark-suite/.ruby-version
cd ~/ruby-benchmark-suite

ruby -v
date
rake bench
date

sleep 600
cd ~/
echo "jruby-1.7.14" > ~/ruby-benchmark-suite/.ruby-version
cd ~/ruby-benchmark-suite

ruby -v
date
rake bench
date

sleep 600
cd ~/
echo "rbx-2.2.10" > ~/ruby-benchmark-suite/.ruby-version
cd ~/ruby-benchmark-suite

ruby -v
date
rake bench
date

echo "please dstat process kill"

