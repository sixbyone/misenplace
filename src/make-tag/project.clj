(defproject maketag "0.1.0-SNAPSHOT"
  :plugins [[io.taylorwood/lein-native-image "0.3.1"][lein-shell "0.5.0"]]
  :dependencies [[org.clojure/clojure "1.11.1"]]
  :main maketag.main
  :target-path "target/%s"
  :native-image {:graal-bin :env/GRAALVM_HOME
                 :opts ["--verbose"
                        "--report-unsupported-elements-at-runtime"
                        "--initialize-at-build-time"]
                 :name "maketag"}
  :profiles {:dev {:global-vars {*warn-on-reflection* true
                                 *assert* true}
                   }
             :native-image {:jvm-opts ["-Dclojure.compiler.direct-linking=true"]}
             :uberjar {:aot :all}}

  :aliases {"install" ["shell"
                       "cp"
                       "target/default+native-image/maketag"
                       "/Users/dela/.local/bin/maketag"]})
