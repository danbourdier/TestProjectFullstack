json.extract! route, :id, :title, :activity, :distance, :description, :start_point,
  :end_point, :creator_id

  # jbuilder directly references each respective object from a model utilizing methods from a model
  # my partial