
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :files $ {}
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1624469709435) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1624469715390) (:by |rJG4IHzWf) (:text |=)
                  |D $ %{} :Leaf (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1624469701389) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env)
                      |T $ %{} :Leaf (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode")
                      |b $ %{} :Leaf (:at 1652241850652) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1657645386888) (:by |rJG4IHzWf) (:text "|\"triadica-guidebook")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1710869966934) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1710869968917) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1710869969740) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1518156276516) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1648958387899) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1648958387899) (:by |rJG4IHzWf) (:text |register-languages!)
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1636914348413) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636914349962) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636914352112) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yO $ %{} :Expr (:at 1646150039456) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped)
                  |T $ %{} :Leaf (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Leaf (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000)
                  |h $ %{} :Leaf (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1648634362331) (:by |rJG4IHzWf) (:text |;)
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |j $ %{} :Leaf (:at 1518157669936) (:by |root) (:text |:hydrate-storage)
                          |r $ %{} :Expr (:at 1518157527987) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624469412598) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                              |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469553191) (:by |rJG4IHzWf) (:text |.!querySelector)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1646150052705) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1646150152124) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646150154932) (:by |rJG4IHzWf) (:text |js/console.log)
                  |b $ %{} :Leaf (:at 1646150157857) (:by |rJG4IHzWf) (:text "|\"persist")
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626201152815) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1626201163076) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1626201191606) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626201192115) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1626201192626) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1626201164538) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201161775) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1614750747553) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1507461699387) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1507461704162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                          |r $ %{} :Expr (:at 1507461710020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
                      |y $ %{} :Expr (:at 1626777542168) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1626201203433) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error")
                      |j $ %{} :Leaf (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                      |n $ %{} :Leaf (:at 1648585564758) (:by |rJG4IHzWf) (:text |schema/docs)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1648704877144) (:by |rJG4IHzWf) (:text |docs-workflow.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1626201173819) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1626290808117) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!)
                |z $ %{} :Expr (:at 1648958370272) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1648958377540) (:by |rJG4IHzWf) (:text |docs-workflow.config)
                    |b $ %{} :Leaf (:at 1648958378538) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1648958378837) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1648958383342) (:by |rJG4IHzWf) (:text |register-languages!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |docs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1646491858255) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1646491860967) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1646491858255) (:by |rJG4IHzWf) (:text |docs)
              |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |[])
                  |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Overview")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:overview)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"overview.md")
                      |o $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |[])
                  |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Guide")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:guide)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"guide.md")
                  |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Attributes")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:attributes)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"attributes.md")
                  |o $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Shaders")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:shaders)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"shaders.md")
                  |q $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Mouse Events")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:mouse-events)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"mouse-events.md")
                  |r $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1658847392960) (:by |rJG4IHzWf) (:text "|\"Controls")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1658847948014) (:by |rJG4IHzWf) (:text |:controls)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1658847397885) (:by |rJG4IHzWf) (:text "|\"controls.md")
                  |rD $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1672458929553) (:by |rJG4IHzWf) (:text "|\"Rotation")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1672458937827) (:by |rJG4IHzWf) (:text |:rotation)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1672458934655) (:by |rJG4IHzWf) (:text "|\"rotation.md")
                  |rT $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1661793518596) (:by |rJG4IHzWf) (:text "|\"Lines")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1661793520332) (:by |rJG4IHzWf) (:text |:lines)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1661793523219) (:by |rJG4IHzWf) (:text "|\"lines.md")
                  |s $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Projection")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:projection)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"projection.md")
                  |t $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Performance")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:performance)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"performance.md")
                  |u $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"About")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:about)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"about.md")
                  |v $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"Demonstration")
                      |h $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:demonstration)
                      |l $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1657645255706) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1657645255706) (:by |rJG4IHzWf) (:text "|\"demonstration.md")
        |load-doc $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1646492039492) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1646492046361) (:by |rJG4IHzWf) (:text |defmacro)
              |b $ %{} :Leaf (:at 1646492039492) (:by |rJG4IHzWf) (:text |load-doc)
              |h $ %{} :Expr (:at 1646492039492) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646492043321) (:by |rJG4IHzWf) (:text |filename)
              |l $ %{} :Expr (:at 1646492047430) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646492049914) (:by |rJG4IHzWf) (:text |read-file)
                  |b $ %{} :Expr (:at 1646492050611) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646492051158) (:by |rJG4IHzWf) (:text |str)
                      |b $ %{} :Leaf (:at 1646492054009) (:by |rJG4IHzWf) (:text "|\"docs/")
                      |h $ %{} :Leaf (:at 1646492057193) (:by |rJG4IHzWf) (:text |filename)
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1710869986093) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1710869993900) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1710870000634) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1710870034845) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1710870037806) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1710870038411) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1710869996635) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1710869997880) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1710869989994) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1710869990754) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1710869991469) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710869991469) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1710869991469) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710869991469) (:by |rJG4IHzWf) (:text |println)
                              |b $ %{} :Leaf (:at 1710869991469) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1710869991469) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1710869991469) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :usages-dict $ {}
      :: :reference |app.config |dev?
      #{} (:: :def |app.main |dispatch!) (:: :def |app.main |main!)
    (:: :reference |app.config |site)
      #{} (:: :def |app.main |main!) (:: :def |app.main |persist-storage!)
    (:: :reference |app.main |*reel)
      #{} (:: :def |app.main |dispatch!) (:: :def |app.main |main!) (:: :def |app.main |reload!)
    (:: :reference |app.main |dispatch!)
      #{} (:: :def |app.main |main!) (:: :def |app.main |render-app!)
    (:: :reference |app.main |mount-target)
      #{} $ :: :def |app.main |render-app!
    (:: :reference |app.main |persist-storage!)
      #{} $ :: :def |app.main |main!
    (:: :reference |app.main |render-app!)
      #{} (:: :def |app.main |main!) (:: :def |app.main |reload!)
    (:: :reference |app.schema |docs)
      #{} $ :: :def |app.main |render-app!
    (:: :reference |app.schema |load-doc)
      #{} $ :: :def |app.schema |docs
    (:: :reference |app.schema |store)
      #{} (:: :def |app.main |*reel) (:: :def |app.main |reload!)
    (:: :reference |app.updater |updater)
      #{} (:: :def |app.main |dispatch!) (:: :def |app.main |reload!)
    (:: :reference |docs-workflow.comp.container |comp-container)
      #{} $ :: :def |app.main |render-app!
    (:: :reference |docs-workflow.config |register-languages!)
      #{} $ :: :def |app.main |main!
    (:: :reference |reel.core |reel-updater)
      #{} $ :: :def |app.main |dispatch!
    (:: :reference |reel.core |refresh-reel)
      #{} $ :: :def |app.main |reload!
    (:: :reference |reel.schema |reel)
      #{} $ :: :def |app.main |*reel
    (:: :reference |reel.util |listen-devtools!)
      #{} $ :: :def |app.main |main!
    (:: :reference |respo.core |clear-cache!)
      #{} $ :: :def |app.main |reload!
    (:: :reference |respo.core |render!)
      #{} $ :: :def |app.main |render-app!
    (:: :reference |respo.cursor |update-states)
      #{} $ :: :def |app.updater |updater
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
