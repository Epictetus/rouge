# encoding: utf-8
require 'spec_helper'
require 'rl'

describe RL::Eval::Namespace do
  describe "the rl namespace" do
    before do
      @ns = RL::Eval::Namespace[:rl]
    end

    it "should contain elements from RL::Eval::Builtins" do
      @ns[:let].should be_an_instance_of RL::Builtin
      @ns[:quote].should be_an_instance_of RL::Builtin
    end

    it "should contain fundamental objects" do
      @ns[:nil].should eq nil
      @ns[:true].should eq true
      @ns[:false].should eq false
    end
  end

  describe "the r namespace" do
    before do
      @ns = RL::Eval::Namespace[:r]
    end

    it "should be Kernel" do
      @ns.should be Kernel
    end
  end
end

# vim: set sw=2 et cc=80: