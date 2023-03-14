// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AddFavoriteController from "./add_favorite_controller"
application.register("add-favorite", AddFavoriteController)

import AddListController from "./add_list_controller"
application.register("add-list", AddListController)

import FavoriteSearchController from "./favorite_search_controller"
application.register("favorite-search", FavoriteSearchController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import IndexSearchController from "./index_search_controller"
application.register("index-search", IndexSearchController)

import MapShowController from "./map_show_controller"
application.register("map-show", MapShowController)
