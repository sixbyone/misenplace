(ns maketag.main
  (:require [clojure.string :as str])
  (:gen-class))

(defn remove-punctuation
  "Remove punctuation from a string"
  [string]
  (str/replace string #"[^\w\s]" ""))

(defn split-string
  "Split a string into words"
  [string]
  (str/split (remove-punctuation string) #"\s+"))

 (defn make-tag
  "Create a tag from a sequence of strings"
  [strings]

  (->> strings
       (mapcat split-string)
       (map str/lower-case)
       (str/join "-"
       )))

(defn -main
  "Create a tag from the command arguments"
  [& args]
  (print (make-tag args))
  (flush))