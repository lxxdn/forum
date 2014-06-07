# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

require 'unicorn'
require 'unicorn/oob_gc'
require 'unicorn/worker_killer'

# GC ever two requests that hit /expensive/foo or /more_expensive/foo
# in your app.  By default, this will GC once every 5 requests
# for all endpoints in your app
use Unicorn::OobGC, 10



# Max requests per worker
use Unicorn::WorkerKiller::MaxRequests, 3072, 4096

# Max memory size (RSS) per worker
use Unicorn::WorkerKiller::Oom, (192*(1024**2)), (256*(1024**2))