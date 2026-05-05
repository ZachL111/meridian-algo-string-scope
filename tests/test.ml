#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 92; capacity = 70; latency = 14; risk = 16; weight = 11 };;
expect (score signal_case_1 = 206);;
expect (classify signal_case_1 = "accept");;
let signal_case_2 = { demand = 95; capacity = 96; latency = 10; risk = 17; weight = 11 };;
expect (score signal_case_2 = 242);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 81; capacity = 85; latency = 13; risk = 5; weight = 10 };;
expect (score signal_case_3 = 241);;
expect (classify signal_case_3 = "accept");;
