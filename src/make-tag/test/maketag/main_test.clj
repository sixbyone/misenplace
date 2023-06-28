(ns maketag.main-test
  (:require [clojure.test :refer :all]
            [maketag.main :refer :all]))

(deftest make-tag-test
  (testing "Basic Test Case"
    (is (= "one-two" (make-tag ["One two"]))))
  (testing "Basic Test Case 2"
    (is (= "one-two" (make-tag ["One", "two"]))))
  (testing "Basic Test Case 3"
    (is (= "one-two-three" (make-tag ["One two","three"])))))
