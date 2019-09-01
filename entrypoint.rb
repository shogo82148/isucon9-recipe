# cookbookの呼び出しを簡単にする為のヘルパー
include_recipe 'lib/recipe_helper.rb'

# from https://github.com/toritori0318/itamae-sample-project/blob/master/entrypoint.rb

node["recipes"] = node["recipes"] || []

node["recipes"].each do |recipe|
  include_recipe recipe
end
