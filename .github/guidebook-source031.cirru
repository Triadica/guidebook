[]
  [] |edit |imports |app.updater |--input-format |cirru |--code
    quote $ []
      docs-workflow.updater :as docs-updater
  [] |tree |replace |app.updater/updater |--path |@3 |--input-format |cirru |--code
    quote $ docs-updater/updater store op op-id op-time
  [] |tree |replace |app.main/render-app! |--path |@3.3 |--input-format |cirru |--code
    quote $ fn (op)
      hint-fn $ {} (:args $ [] 'Dynamic) (:return 'Unit) (:features $ #{} :js-ffi)
      if (enum? op) (dispatch! op) (raise "|Expected an Enum render action")
      , &unit
