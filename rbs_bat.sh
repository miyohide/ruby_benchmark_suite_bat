#!/bin/sh

dstat -tcm -C 0,1,2,3,4,5,6,7 --output ~/dstat_results/ruby_benchmark_suite_dstat_result.csv &

cd ~/ruby_benchmark_suite

rbenv shell 2.1.2
ruby -v
date
rake bench
date

sleep 600

rbenv shell jruby-1.7.14
ruby -v
date
rake bench
date

sleep 600

rbenv shell rbx-2.2.10
ruby -v
date
rake bench
date

