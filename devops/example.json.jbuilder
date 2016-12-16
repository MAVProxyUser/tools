#array
if @state == 200
json.array!(@f) do |t|
 json.product_version t.code
 json.flow            ParaStatu.find(t.status).key
 json.released_time   Time.at(t.modified||t.created||t.updated_at||t.created_at).strftime('%Y-%m-%d')
if params[:product_id] == 'wm330' and params[:product_version] == '01.01.0301' and params[:need_upgrade_app] == '1'
json.release_note  do
  json.set! @lan, get_default_note(@lan) 
end
else
json.release_note  do
  json.set! @lan, getNote(t.id,@lan)
end
end
end

else
json.status  @state
json.msg  @msg

end

#template use
json.status 0 
json.page @page
json.page_size

json.showcase_publics @showcase_publics do |showcase_public|
  json.partial! 'web/showcase_publics/single', showcase_public: showcase_public
end

#template
json.id showcase_public.id

json.app_id showcase_public.app_id

json.app_name showcase_public.app_name

json.developer_name showcase_public.developer_name 

json.developer_website showcase_public.developer_website

json.logo_url showcase_public.logo_url 

json.banner_img1_url showcase_public.banner_img1_url 

json.banner_img2_url showcase_public.banner_img2_url

json.banner_img3_url showcase_public.banner_img3_url

json.banner_img4_url showcase_public.banner_img4_url

json.banner_img5_url showcase_public.banner_img5_url


