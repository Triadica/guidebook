
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
      :type-slots $ {}
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (SiteConfig :storage-key |triadica-guidebook)
          :examples $ []
          :schema $ :: 'docs-workflow.schema/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ docs-workflow.schema :refer $ SiteConfig
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            match (typed/decode-control op)
              (:some control)
                reset! *reel $ typed/apply-control updater @*reel control
              (:none)
                match op
                  (:states cursor data)
                    match
                      try-decode-map-as cursor $ :: 'List 'Tag
                      (:ok typed-cursor)
                        reset! *reel $ typed/record-op updater @*reel (docs-schema/Op :states typed-cursor data) (generate-id!)
                          :timestamp $ shared/date-now-snapshot
                      (:err message) (eprintln message)
                  (:hydrate-storage data)
                    match (try-decode-map-as data 'docs-workflow.schema/Store)
                      (:ok store)
                        reset! *reel $ typed/record-op updater @*reel (docs-schema/Op :hydrate-storage store) (generate-id!)
                          :timestamp $ shared/date-now-snapshot
                      (:err message) (eprintln message)
                  _ $ eprintln |Unknown-operation: op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! 60000
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .query-selector (js-cast js/document dom/DomDocument) |.app
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! () (shared/console-log! |persist)
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel schema/docs)
              fn (op)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Unit
                  :features $ #{} :js-ffi
                if (enum? op) (dispatch! op) (raise "|Expected an Enum render action")
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            reel.typed :as typed
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.dom :as dom
            docs-workflow.schema :as docs-schema
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'docs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def docs
            []
              DocNode :title |Overview :key :overview :content (load-doc |overview.md) :children $ []
              DocNode :title |Guide :key :guide :content (load-doc |guide.md) :children $ []
              DocNode :title |Attributes :key :attributes :content (load-doc |attributes.md) :children $ []
              DocNode :title |Shaders :key :shaders :content (load-doc |shaders.md) :children $ []
              DocNode :title "|Mouse Events" :key :mouse-events :content (load-doc |mouse-events.md) :children $ []
              DocNode :title |Controls :key :controls :content (load-doc |controls.md) :children $ []
              DocNode :title |Rotation :key :rotation :content (load-doc |rotation.md) :children $ []
              DocNode :title |Lines :key :lines :content (load-doc |lines.md) :children $ []
              DocNode :title |Projection :key :projection :content (load-doc |projection.md) :children $ []
              DocNode :title |Performance :key :performance :content (load-doc |performance.md) :children $ []
              DocNode :title |About :key :about :content (load-doc |about.md) :children $ []
              DocNode :title |Demonstration :key :demonstration :content (load-doc |demonstration.md) :children $ []
          :examples $ []
          :schema $ :: 'List 'docs-workflow.schema/DocNode
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ :: 'docs-workflow.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ docs-workflow.schema :refer $ DocNode Store
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time) (docs-updater/updater store op op-id op-time)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'docs-workflow.schema/Store)
            :args $ [] 'docs-workflow.schema/Store 'docs-workflow.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ docs-workflow.updater :as docs-updater
