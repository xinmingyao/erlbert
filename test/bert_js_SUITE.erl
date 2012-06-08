-module(bert_js_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").
init_per_suite(Config)->
    application:start(sasl),
    application:start(erlang_js),
    application:start(erlbert),
    
    
    Config.
end_per_suite(Config)->
 
    Config.

init_per_testcase(_A,Config)->
    bert_js:start_link(),    
    Config.
end_per_testcase(Config)->


    Config.
    
all()->
    [get].


get(_Config)->
    {ok,4}=bert_js:call(my_add,[1,3]),
    {error,_}=bert_js:call(no,[])
	.

    
    
    

