require 'rest-client'
require 'json'
require 'active_support/core_ext/object/try'

# palette_resource = "https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.colors.palettes.getInfo&access_token=aae9d4b2ae8bc1b53e97cec29fe458cb&palette=css4"
#
# palette_page = RestClient.get(palette_resource)
#
# palette_json = JSON.parse(palette_page)
#
# 6.downto(1) do |count|
#   resource = "https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.objects.tags.getObjects&access_token=aae9d4b2ae8bc1b53e97cec29fe458cb&tag=photography,recording,communication,electronic,recording,radios,portable,technology,entertainment,appliance,listeners&page=#{count}"
#
#   current_page = RestClient.get(resource)
#   puts "%%%%%%% PAGE #{JSON.parse(current_page)["page"]} %%%%%%%%%%%%%"
#
#   i = 1
#   object_json = JSON.parse(current_page)["objects"].each do |object|
#     puts "%%%%%%% OBJECT #{i} %%%%%%%%%%%%%"
#     i+=1
#     shape = Shape.create()
#
#     designer = object["participants"].find do |x|
#       x["role_name"] === "Designer"
#     end##close designer
#
#
#
#     image_values = object["images"].map do |x|
#       x.values
#     end.flatten
#
#
#     selected_images = image_values.select do |y|
#          y["width"] == 1024 || y["height"] == 1024
#     end
#
#
#     images = selected_images.map do |z|
#       Image.find_or_create_by(
#         url: z["url"]
#       )
#     end.flatten##close images
#
#
#
#
#     id = object["id"]
#
#
#     tag_resource = "https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.objects.tags.getTags&access_token=aae9d4b2ae8bc1b53e97cec29fe458cb&object_id=#{id}"
#
#     tag_page = RestClient.get(tag_resource)
#
#     tag_json = JSON.parse(tag_page)["tags"].map do |tag|
#       tag["name"]
#     end##close tag
#
#     tags = tag_json.join(", ")
#
#
#
#
#     color_resource = "https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.objects.getColors&access_token=aae9d4b2ae8bc1b53e97cec29fe458cb&id=#{id}"
#
#     color_page = RestClient.get(color_resource)
#
#
#     css4_colors = JSON.parse(color_page)["colors"].sort_by do |color|
#       color["closest_css4"]
#     end.map do |color|
#       color["closest_css4"]
#     end.uniq
#
#     colors = css4_colors.map do |color|
#       this_color = Color.find_or_create_by(
#         name: palette_json.try(:[],"colors").try(:[],color).try(:[],"name")
#       )
#     end##close color
#
#     # this_palette = Palette.find_or_create_by(colors:colors)
#
#
#     this_palette = Palette.create(colors:colors)
#     # this_palette.colors = colors
#     # this_palette.save
#
#
#
#     this_object = Device.create!(
#       title_raw:object["title_raw"],
#       date:object["date"],
#       description:object["description"],
#       decade:object["decade"].to_i,
#       medium:object["medium"],
#       dimensions:object["dimensions"],
#       gallery_text:object["gallery_text"],
#       device_type:object["type"],
#       shape: shape,
#       palette: this_palette
#     )
#     this_object.images = images
#     this_object.designer = designer.try(:[],"person_name")
#     this_object.tags = tags
#     this_object.save
#   end##close object
#
#
# end##close count


# ColorPalette.where(color_id:[25,22]).to_a.group_by(&:palette_id).values.find{|x|x.length==2}
# Device.find(220).update(palette_id:61)

palette_resource = "https://api.collection.cooperhewitt.org/rest/?method=cooperhewitt.colors.palettes.getInfo&access_token=aae9d4b2ae8bc1b53e97cec29fe458cb&palette=css4"

palette_page = RestClient.get(palette_resource)

palette_json = JSON.parse(palette_page)["colors"]

palette_json.values.each do |x|
  Color.find_or_create_by(name: x["name"])
end
