# encoding: UTF-8

require 'benchmark'
require_relative 'base_middleware'

module GoodData
  module Bricks
    class BenchMiddleware < GoodData::Bricks::Middleware
      def call(params)
        puts 'Starting timer'
        result = nil
        report = Benchmark.measure { result = @app.call(params) }
        puts 'Stopping timer'
        pp report
        result
      end
    end
  end
end
