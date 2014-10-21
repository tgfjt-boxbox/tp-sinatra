# coding: utf-8

require 'bundler/setup'
require 'sinatra'
require 'active_record'
require './models/wagon.rb'

get '/' do
  'Hello World'
end

get '/wagons/?' do
  @wagons = Wagon.all
  erb :index
end

get '/wagon/create/:name/:email' do
  @wagon = Wagon.new(name: params[:name], email: params[:email])
  if @wagon.valid?
    @wagon.save
    erb :create
  else
    erb :error
  end
end

get '/wagon/delete/:name/:email' do
  wagon = Wagon.where(name: params[:name])
  wagon.destroy_all
end
