-module(bert_server_SUITE).
-compile(export_all).
-include_lib("common_test/include/ct.hrl").
init_per_suite(Config)->
    Config.
end_per_suite(Config)->

    Config.

init_per_testcase(_A,Config)->

    Config.
end_per_testcase(Config)->

    Config.
    
all()->
    [get].


get(_Config)->
    application:start(sasl),
    application:start(erlang_js),
    application:start(erlbert),
    application:start(cowboy),
    bert_js:start_link(),
    cowboy:start_listener(bert,100,cowboy_tcp_transport,[{port,9999}],bert_server,[]).

    
    
    

